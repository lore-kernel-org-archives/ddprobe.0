Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77EFC5115
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 19:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647633384;
	h=To:Subject:From:Message-Id:Date;
	bh=xF2SEvd9HsDwQGlUOgPtoGkBbKGrLduuJHbGJK7pqr8=;
	b=MpJFrDhPlXYVbpO71n69H4hUt4961n6VMvaSaAQukdeEib0IK5NANh8j92IRGcN1
	M5dFpq2EasXuioBPbDJAPdBC2GerEjtsSN3YVjSfCBmTMRpmrkQtfvHPJR5jd8trtCu
	/XycivMk4CqzYU2/4XhnIlTZcIBz20C8Z6Y0Y88s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647633384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xF2SEvd9HsDwQGlUOgPtoGkBbKGrLduuJHbGJK7pqr8=;
	b=eCSn71acQz7eSkTfcE63BT988OV1wZgR/CA6etee2fE43Lmqcw4gNIFucPr038bQ
	XwR94FR+rXHAsvu6zbLS88Loj4g6Ro+sxJIlrxzdTzvNQHW33zdUj6hd5Kk9QEa/IuM
	0KqFAXtRNlWxDA9fAwFJeSZnmnhbxCFaImrI2NBs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9e9a4511-48224b34-9b13-4afc-ac5d-7bd3b58eb54e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3c21f2624ccc36f2a450962d3d9e6376dba32ebb6f04330a63a21c9e61b6be9
Date: Fri, 18 Mar 2022 19:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647633384
