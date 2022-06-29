Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178257EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 07:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656487012;
	h=To:Subject:From:Message-Id:Date;
	bh=GCVA22ifYllzABmNYzv4Rti5UU75fVAkF+Di72MUXzM=;
	b=ATWKFgv4gXrfX7T4rLvx0wN8XmKpldOgTye2y4W5qG3R/zedPsX+L+dwr03buH7S
	ysGcJRmipu7TBc5t+sIsekls/s2u1eT4uV12cV5fM0AFa6MkH/CxQJvN0yNIEHeFz7q
	/JrVCxlCBjZfx7UmsRDOK3nL2uCSuT52aBq+jEu0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656487012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GCVA22ifYllzABmNYzv4Rti5UU75fVAkF+Di72MUXzM=;
	b=DkZwnfbU+QDapvOFpyaHInEc4/ffmmOmeI9qVgk76yuQnY8HEyW/omCy5edmeTmo
	pj+4rCY2Xg7SlqbpyqiZ17cYo3FyogYPLpHt2xVLQKreYjUE+8Zb+S8ZwYtnyp1ZO8C
	1fge/x7a/xl+bfwkhgXD1e/O9T0l2KJr9L4vCTck=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ae51e7cc-34e4d8cd-d748-4388-b536-177ded1282ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86380b9dc8826035b83e917af6f96934ac3c72b08590622efe694638daafeda3
Date: Wed, 29 Jun 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656487012
