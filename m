Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E137E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 17:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648317598;
	h=To:Subject:From:Message-Id:Date;
	bh=MPPNwC7BnExgTs4NgZlUd0qPchNWOt41wh7ptua39lQ=;
	b=Bh3p8Lx/02+k/ksGHoMOlSg8wV5PuYZ3ctLjUsCqMxajVHSaGFB404xyCeoUshP/
	czeHiDWZrPAbbeciMcAFWkeZMxhlgu2FCSIbWTdipf69USRXoEHTMmquU4GZhz2wjMZ
	Ix+O2vOm7prWTKjy2+bVvzt+cue8/M8z4u63EtfM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648317598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MPPNwC7BnExgTs4NgZlUd0qPchNWOt41wh7ptua39lQ=;
	b=T6qHx9P3A+3lj8WZkewdYspDC8AtTDsifpEYkiadwZtq2ILRkp4CWGYBIGoyoJxR
	whO6Jk1LgFNzuPF01NBTk5W0KRrL+5t8QEo/29SqJ+Fl+JkY7Hf6bcS93Kw3AdEztdP
	z7A0ieP6cJT5wsTCTcB6DtoHpS+7yvJBEV3YKgUg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc7628a68-58e628c6-cdfd-4c08-99dc-97172abd6532-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9bf9f7c4797ff977e08204ac6edc2c5aa081396b060063f6798c010764692c8
Date: Sat, 26 Mar 2022 17:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648317598
