Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66EA936F
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659580252;
	h=To:Subject:From:Message-Id:Date;
	bh=IJGl+lm70sjjN3XsjkDakS1OpI3Gk62lvtWvBTXn48Y=;
	b=VKOuL3FXScWarVlEU2UOGFEmh6k9zogkNGzLbJtDi34BsQ6LXzwpMzvm6SizXmFR
	jQLecZh5kFKal83UUrf5vYjZWo4W60yNtzP5T20i+oQlgTvJk0cT2891N2dEfjiBKMx
	WxqtM5ubtxSMHaGBX+h3XC0dJHhbIA/MP/bO4w2s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659580252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IJGl+lm70sjjN3XsjkDakS1OpI3Gk62lvtWvBTXn48Y=;
	b=hipwmiT+m6IGvyNwJZd0jG8qFYaGoCuvEu7o3SKtpfsiguUW/QNQkrGlDBX6hpi5
	I4NPvp7nL06e8iAcDdjJpy6qpb5U3B6NWvJovh9ISbJykuuoDSZNSxy1KSkMjIV2sRm
	mIyL8GXg5hH8JVYKFZMyXMP80InfYXcU91cXbva8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018266b101ab-f33704d4-ad76-4cb6-959b-d9563e072277-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 126810bc9f91fff5053ee52e1095d6e37f2e8dc996ddf2d11f5ec52124f61652
Date: Thu, 4 Aug 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659580252
