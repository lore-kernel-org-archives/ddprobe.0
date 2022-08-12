Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66219399
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660288852;
	h=To:Subject:From:Message-Id:Date;
	bh=MMM/iRaWtDUiHKdN/IezwVnqklEXHaZXpZ3oMmVqsJY=;
	b=Lmj8FPDH6JxCvqXdFYIb501Kl1RjXDrY7a/BAfrnsCD/TiR5CJt5ivJGMy/oWfu+
	B/1p0wlFzrCXE+URv4lh+mVGZmrSynC++iEP9OSABQfHpJro+Awae1KdqYmBR4XM2kV
	IjtZWs6EcCmXbCAlcsyZ2QatjJQ6D8mZxT6ei+0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660288852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MMM/iRaWtDUiHKdN/IezwVnqklEXHaZXpZ3oMmVqsJY=;
	b=Q4Nd4+UgsghkJ0u4UWyIvKXu8bTOKdW1HKRN2xBdLqxNQTnixgc2e42DCrEHHXrY
	uS6QFWDpVOYSHwkuI8doj9Uqsglc0VTTlkxpmQR60qWu/2G5DpRD1SkSIex7Q9EBN9T
	S0t2u7i11WUDI3/q+3jK5OToD38+hKUAETnQKxpI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018290ed6244-4e65a9ff-b0ca-48c8-80e2-14586016e9f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d80e32965416167f969959698f9897947ae96cab68fc8a0e99fb3ade6786011e
Date: Fri, 12 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660288852
