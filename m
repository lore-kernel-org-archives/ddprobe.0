Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B226C620
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 04:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647060684;
	h=To:Subject:From:Message-Id:Date;
	bh=+gGbAUWGpl9gNso1rPd9+tp22+SI8Urlw9oa47wDf2c=;
	b=cP9NrARDR/pyWQQLbGGf8NRpxT5KYyKk/5Dq/36zMf5ZYTRg/MoEIFlHzBpKCpll
	7MaE3TXiKEnFIsiRvx5RHBY1X+MyNlHkx3gfveyCe08NFFUqYdJJ79CwNRKl6dSzSSq
	eDje/Mt90++pyQzD2pg8fz/80MKumYex5G3eh5F8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647060684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+gGbAUWGpl9gNso1rPd9+tp22+SI8Urlw9oa47wDf2c=;
	b=ckm3URkn7FDluMFo9FBQt17CCzzfM9+EGrzsgKbAuEDgfyWTIHScAgVFZ93NK9d2
	/9/HP8PVLAdGoo27k8cR+8YPtpFV0Ov+qDJlbFdW8DS5qJts/D6bCsQxAPPwnO/kStp
	+lzSjrdn3q8RrF9UmnTOBG9nTDLRhOUkHTtqnhds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7c778fd2-bf5acd60-247e-4c99-9c3f-cdf151c3c702-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8436005a88fa8171ee8d9d3f6e713a7c346fa43fe238c187f6b8d3982eeb12f9
Date: Sat, 12 Mar 2022 04:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647060684
