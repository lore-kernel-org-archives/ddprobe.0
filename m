Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD87265A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 03:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644808804;
	h=To:Subject:From:Message-Id:Date;
	bh=22tFSxKRG/OyMtCvNMKihyvU6Z6vuVRD/TH1VbLCWVY=;
	b=lMEciv5jdnLXnm7YJpJZ+zZCV8wY+Kxq7UDStA4fBFFyEy8E2FYSSCmIK7/yWTjp
	Z00bNeElrleI/P6v4Y/YeOfpS4ykFs5Hf9lTytOcBkhiTjz1xhTBFyipaZsIhHtiGRs
	SruUwHzzUid2wY0xQfxiRyL7lmgp+gRV6WDQ/TaY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644808804;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=22tFSxKRG/OyMtCvNMKihyvU6Z6vuVRD/TH1VbLCWVY=;
	b=KSftMT6NosyODIasBGtTkyk6q/mb1zGRvV0LykSKRcGBchjZ9f/cGUmf/8pGpDvG
	Gst+j6GeBZgPSCc5BJkEO76iZ+xSrr5LUtIjIEzXLFSuBKgSAKhKwoUmmlYN9yn+ziM
	kSJWbyORGNXKLrbqMohpJMhUc0OrR0jgsiDpdbiI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef63e95f1-fb680843-e20c-4765-a66f-e7d7bd917b79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e41a3be4150811b7b1a03b718c11f09df51ecfc59c882b08d74d55c1b1da048
Date: Mon, 14 Feb 2022 03:20:03 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644808803
