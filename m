Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B09DD48B0
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 09:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645175485;
	h=To:Subject:From:Message-Id:Date;
	bh=K5KyH9DW0q6c2dFFIoXiaAI9SG7LNfBK5xNzScC4J2Y=;
	b=D+Q5Xqa2pcV486ainpa7qUH2GrFVLSfHc6z7+UeiIBp5RpOSZbXRMXCMtjNCnhE4
	bEPkaIODnFCXCcxu5UR+AMXc3bqlQp3/yVyd/6epZeb0ZfWGzrogmJevu8k2YiEB18O
	fHco2YI3EmkNOBWLLbkJqj1lLwCvKya2ppm7liUs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645175485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K5KyH9DW0q6c2dFFIoXiaAI9SG7LNfBK5xNzScC4J2Y=;
	b=PnAmJHzInYbfsS8yQFG56ZIW/fdGjOzpiM1+Nz47YnPQyR/bYZ6XQm+Ox3F9IP/c
	YvfYOPaorKtYoTzp57J9/f9wvAkOCa/JZHkRbYFZHvDy1BYEfARMrlFTbfmTEUDTvnx
	QEW1Bl+zRuqMR0p42xj7tZnp61EjL+iezSVY8O1o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c19b157-96fbee89-bd8e-4167-8235-1d54d0399e77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0a00bd0b626f3ceac5d139bb3b29368dccd689e9cf9f232c7899470d2e19cc4
Date: Fri, 18 Feb 2022 09:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645175484
