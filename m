Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B05154F51
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 03:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645241485;
	h=To:Subject:From:Message-Id:Date;
	bh=FuCq22rNnmMZtsGBtASp/g1JOk4StU21Eiak9hL7avw=;
	b=bN6SobBGD0YOzMSQvj4oJ/sFpkZGNOMv2jKaVXWofg2QmEePRfhkCGrvQDwvuqRD
	beT0GxL/pZ2ni0TuYFceal4LfaCvmSRr4F/nRvCNeyVcm5sTw9jSkPIneWdJy0dC20m
	L7ctvDI7NTAUAW+48IavgCsRIVwGOsIls+Y3DisE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645241485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FuCq22rNnmMZtsGBtASp/g1JOk4StU21Eiak9hL7avw=;
	b=PRdMZ2oaCL8L2v7qw2pV2eGmG3MyH8xcRMafsobzwao8d5Yn3/8MPAghLv9VMnIP
	XNCohhMUkss5xPbf8VqN5PugH6/ChCC4tINjuwnDr4FqLzQjePaOxoIm39mHUUk+m4Z
	Vy8ynHw+PxGMEJVb82WHYiMeBIvlGCHg0pkuXNvw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1008c62b-a7235521-a1cc-42db-9990-9d713add06c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd369af03f9f1e8cb35ae24e132228a97b2e70616b341c28c6fc1ea6b07cc0fd
Date: Sat, 19 Feb 2022 03:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645241484
