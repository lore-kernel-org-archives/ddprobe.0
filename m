Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D88835395
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 23:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647732685;
	h=To:Subject:From:Message-Id:Date;
	bh=vkwfePXbapbsfGFLPRoBeOzDYNUGRo10AmV4JUMRpRM=;
	b=hRGCBYXsZ1cg2VlSdzVG6gqKlSZh1Zvyi0FpJtlRX6KOamXs5XHSpOBebyiyBWFp
	9QNIU/0Na3paabTB7MXzUy0D9MzQPqi9gZPqxIrA828pEORsjMw3b6RcQQIRD/AXu2r
	OSKEYMp2SOi8Y8W0SVqD7Wnce+4KCcJoIxp5YfVA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647732685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vkwfePXbapbsfGFLPRoBeOzDYNUGRo10AmV4JUMRpRM=;
	b=ddKY4kpMnJ45m/INDy0vsq/9eEnvcsGDrUzk+EbkR3eE+wSgpxVqCSxpDnTX/LLD
	hvr37ih8TU/QPpjPUC8fvL9aSuRQwjK4jFUGWMNRe4XJWYS52k50mvOSgCR10I++b3X
	+3qQYmNIKc5IL3jlggEu34O71sTLVVVHIyy6jMuI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa48577e9-d66ad8d0-874c-47d0-980e-c8b24e4c18b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0ba8e8f62e00a182c5be4edfe3d345402aa2fc96ab91f3998de4ddd9104f66a
Date: Sat, 19 Mar 2022 23:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647732684
