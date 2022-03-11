Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A02B97E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 04:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646973684;
	h=To:Subject:From:Message-Id:Date;
	bh=i86uvtPjU1/fT2FXUtKPViHjArPb8ZA+X4tILgk5G4A=;
	b=Sxg9B0vockOFA9jBfMzkX6KBR2qVjgZVFVVK5sxDDaWUx7tYryhFYSdcA5R3WaQZ
	sO4Dq1ZmKD8YoUY256obzlmh6tIbnkS0SNb5oQm7DdsSVjJR3cs7zVEaWJ9sTNFM/Ym
	95n9oW9rgRduzKC86ryYuPkWKT/AmpqHNaOrbo4Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646973684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i86uvtPjU1/fT2FXUtKPViHjArPb8ZA+X4tILgk5G4A=;
	b=a44NblaBhdppkoq8H3OyyIOB56QXYdfpwF+IFnWNSG6Ta6GQuvZ0SXA50+od8HDX
	pBFQobPw/LoGxiMN5fiEq5I2l7bNEmUuZEEzPUcFF1n4skKn4/BKir+ghHtAQL6Rzbt
	Ng7YSGCwzQ532tGTAKhGQiPPXK3MCqTO9g+datZs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77480c41-1e8f3357-7500-47e9-980a-b98394cd4d03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ea8349566c3187476414ad11b1d9df5fa9990db82366c7d47f3fb190e01e555
Date: Fri, 11 Mar 2022 04:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646973684
