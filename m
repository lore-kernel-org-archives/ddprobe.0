Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229AA23A4
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 10:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656845812;
	h=To:Subject:From:Message-Id:Date;
	bh=zOVAtYLPI2v1iSoMPm7h2I5qgs6pUcETUr7Zy8jbI9g=;
	b=RL6VnDCOo7gxaKGt6g8wOW/VeAf2DhIxa7O+MgmlK/I1xPMpw+KAxTbtu/fyb18H
	lP7uQjcHnLfQ1l/xiPstPjdsXfpjA0hHqMuchlt2EREvTdeRY2qOHTM7uZdkPTqc+fb
	Jf+sN6Qr33qSEA4VMccPCAPz2qBfFk30sFW7eRZ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656845812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zOVAtYLPI2v1iSoMPm7h2I5qgs6pUcETUr7Zy8jbI9g=;
	b=boLUrfSWEZbCmEqttBEVle6UtxgTFzaTxpVTIeMRpUMajS7nCrzLCt+WS2NfdePJ
	TBpTeT++Fr8Hv2FTMGC6kpP/NGqiWwa/TGhLiKPNtKnOab07/uZA40sxhjxGGGN57mq
	PwgIYTKgug8Bp49ysyTxXtnjcbj98I2Dv4upSKrQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c3b4c298-848971c1-dd41-400d-8ce0-e4b22a7f6e29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88e7cc179b3711cce06e819782abe351bd819a69eaf6fab74a81f9b2326aaf74
Date: Sun, 3 Jul 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656845812
