Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0692D110D
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 07:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655104559;
	h=To:Subject:From:Message-Id:Date;
	bh=gGJGyvWLWJ4HzsKKZ/h1DuU2CjOwijdiV8CkzFpCgw8=;
	b=blYAU6fSZYoW9bwVIczkSK9/KWP5/wpqgi/bpu/01ASWLxgrkuibkfyChoadobT4
	FWLbUJXS88nfLlzp17GTLzZu5WA3MCjMCl/GBQ4UxQFfwtS8jikPVpd5Y6Y9rHmwgua
	WXCE4UAJPecUvfES6UwY4v2encN7QTgOKAaWQhvA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655104559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gGJGyvWLWJ4HzsKKZ/h1DuU2CjOwijdiV8CkzFpCgw8=;
	b=IBJrRJzH3fBTSNNAPtIVQ15NxgTFYE2uGkjrbcR2czIP8SRAsuKYdpJLIyO28W8+
	GTS6zYq/zyijawnnRs36VVUrKAEkgPAn9P3Cc4nwFwjnv0Bc7y2vdr1RFDOXXgEgqu4
	j/lDnhbA30yTZq544PJVb1/tTksS5RTlU+iiCV+o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815beb587a-1c8bf410-59ca-4cf6-b8d0-8f22c1e7855b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32007e0832e5b945ba499fcc156154abcbc42b1dccd0b6a77aabaf0fdd20f790
Date: Mon, 13 Jun 2022 07:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655104559
