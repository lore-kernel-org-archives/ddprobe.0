Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824CA3207
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 20:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652300339;
	h=To:Subject:From:Message-Id:Date;
	bh=qAXcRjvdaTosRfFisRZe9ATPbNiajak3LKhZfmp0+ow=;
	b=Asgk38/dxyHw8MqiTh2loJBJqFidP1GRsVd0Wk2OdXtkYzkEDW/KQSD/Eeff12A1
	6SDnlDI/1QeFXQT6IdTPXMJtAAhiBt3Bfv5UCbJoPRVVz2mChBLHjB2BnZ9mZBRwF0e
	K7DLbX4xWZ+y2OTwpiFz3sclS3Cu9P8mtmwVGhQ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652300339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qAXcRjvdaTosRfFisRZe9ATPbNiajak3LKhZfmp0+ow=;
	b=N7LQrRmDE1XgcXLQoWZAk34Warfv+clB6bPhPc3U4BFc3OjZQEb2zJMyIZoZE8Qh
	R/zo1ONOfpr/LTJO5F0RbSh/mhmpq3AMaidkGj01+GNFI4rn6lMzRmrrm/bsQVOZo82
	dr44A4utI18JVJWexkon0LUCpraMsVcmfkc/No6s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b4c65856-6d995f1d-b004-47ec-981b-f18f0bd889ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90343330428646842f7520d27ffe40790958f40ab9067834a0a523a7624fd1e3
Date: Wed, 11 May 2022 20:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652300339
