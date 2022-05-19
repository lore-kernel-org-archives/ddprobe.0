Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42277A
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 07:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652945699;
	h=To:Subject:From:Message-Id:Date;
	bh=ZrhKoEr0cy/MXW3PV373UpsBjCEzPs+Q8IR9xtDg8Qs=;
	b=EGDk3CcVB5N4tAVUPKvCf+ADpwjn5Xre1v4naKEOvKxF2CcGEL3DZOtOp0htukpe
	ffOgLXmBUHtP1d8KBlDtb1+A/4PZKyiuY2PUDjee4CwWwc2Aa64yR5SGDAsmKgP8knJ
	kHVm67sV/EDaHo/p6+iv1ppQ7ymu1FcsiBcuWXZE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652945699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZrhKoEr0cy/MXW3PV373UpsBjCEzPs+Q8IR9xtDg8Qs=;
	b=TJgZt9kKw9Rd0To0G5SIoz4pVaxJOowpuYXCw8LyM84bVdZ79lWfymP32mjY2h5g
	2osV7YAUbexvW+LBKEkDYL+uL5mnCsR9dkdKmOV+miegEuPwWQkILublYkXEq/pK1QR
	O6O1J2fOMUeWFb43ijJoDrbtFQCpjmkR6GXz7vNg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180db3dc1ec-6fc1298d-048c-4275-9067-437ae9dbef6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3929e2d77eb97fdec253d820a4103ca8ad9ae0ab884dc8af4511da00026f5db9
Date: Thu, 19 May 2022 07:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652945699
