Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9979D369
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647083484;
	h=To:Subject:From:Message-Id:Date;
	bh=fD0D+IkfOAYAyVKzpoXmSGa01Lh4zsFLJob8DbSpGsw=;
	b=SZvWpoFTAwsZ5J4bWHYIx6Bt/zNBvs6979z3K9HLutf/6ucPAb0o9ebiPfrqc1+A
	NvJskZq4m3FMF9RlyUkUDOoSdCDz2+yGnPCE78hAlsL+SjMXx6gjCpxzek+EnuACh65
	drxnIyzbalyzhuvXkLkChc4NdJM22v7gV+IWi+Zc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647083484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fD0D+IkfOAYAyVKzpoXmSGa01Lh4zsFLJob8DbSpGsw=;
	b=Ymfe3DHVPxN/UAmZG4fSFD9VaDDrdcLnHH/BMNFqQRrWZl36Sizdy4LtJijEOZb0
	MZK/T5iecJUlq1HiTXC/iI9tUAZOS7CFPTNGly9sihop9/1bme3kRn+vKTMV0SBE+hF
	RfvyxzZUJ61ZJe/OoQpVR9tcv+lJ/iD41xr+BBtE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7dd376ad-8a8ec378-07ca-4a94-ba5f-f9aa512b76c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d80c15e02e49d13b62db8f222a69834c0c86c812d7bddd0ed4d52a74b6c2c71d
Date: Sat, 12 Mar 2022 11:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647083484
