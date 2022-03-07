Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74B87C
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646681485;
	h=To:Subject:From:Message-Id:Date;
	bh=Zj1DZuOwOdbbEgEKFtRtjnvYtTiH8n8i09k1Hvdkej0=;
	b=mtSj2k9oi7sIZujKnJNhu/wt5v1jtd/tWvfzDe4jK988yAQm88d8976LtPmfSaWG
	JoAtbxTw+oCulD4SNOLfh2EdX4m90KHrYrhDRKHYHwx4lUTpNvU16vvDAiTUo5QzTCP
	EXmr0HDb6aqKdukn+PN7dw/omBKEnhAksrLYpTkQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646681485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zj1DZuOwOdbbEgEKFtRtjnvYtTiH8n8i09k1Hvdkej0=;
	b=DdRgCeJtk4Y5i8xIIceRqJha2qVphKGvhjKOmF4sRCuqIPWSosBkXVUKorCDd3fM
	0sTrdPAH4h/dPb/7H5umARnmUFcwBmZoap5gk8QSPQQQNeq21XPGzP+G+eY2AqucI2P
	O7UpD+vyuGS5+ZQXqgTXxI9QTc/OfnqCpk/wz0dM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f65dd6e85-d07e781a-6111-4d09-a57b-d87e63361e22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: afe97485b297908441324f5e884ea75d58c560455b4708a24818d6984ca7f536
Date: Mon, 7 Mar 2022 19:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646681484
