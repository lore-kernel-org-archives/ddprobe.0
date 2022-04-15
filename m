Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FF4033C0
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 16:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650038758;
	h=To:Subject:From:Message-Id:Date;
	bh=ar9dqjKBOTvUZunLAROk+1jR2H9xdkG7wkLKWaZvbYk=;
	b=U757M+NEZdDc9CorA66uy0Iijy+owjurWjEAVtDdEbFVsXirSB9Lo19qTUsvp8hq
	bcWmvFX5t0tj3BLaGkZc962C6lCxX9CbVOyWenLAgZe2RtsVrsVOtGNxqJ2IK/Y0cSa
	9ujVEdGE6eXNBPSdumOGzdyTIZGWTabXhQEAvWJA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650038758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ar9dqjKBOTvUZunLAROk+1jR2H9xdkG7wkLKWaZvbYk=;
	b=hd0TbYOC9XRrBtU9y6qT7SZy/5nUv9fyvvNPanCa0otevCmySZVH4mhdTMEqYukv
	neuiMqir3v++m8YUMQ7Zo8nrmPKfp3lHTVEr/syitLpZrufG+5ZAnIyS2L/LMLMj3ot
	OoBWLuLT8s9hVderFxxsW+2yUoBbwgyNVbULQo2c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802df95ba9-d064e1e6-44bb-4569-ad7b-c4b8223d9be8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e11300b37713fcb3575e88dec5d74cdc190db53cb0182a0ccdff67df75a502d
Date: Fri, 15 Apr 2022 16:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650038758
