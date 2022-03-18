Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A9F42F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647596485;
	h=To:Subject:From:Message-Id:Date;
	bh=MwJBY/KlsXBuBCvdDxEeKEfJGuaDEB0ykKlqEK9svms=;
	b=FDjsyEbPKzCBO1M4+iHbkMGn4qAbZy1WeSHwlh9cKjRJsxx6L5bcteXdUaYHKoCf
	TA0IMxsDgJb/EmIcIGDdIuY/7YPKP6uQC9N5r2JgAeWHCH27S1WhLAuTO+vm3NhrRC7
	vOWWzGzim2O31TmiCnv4BTHBELccfok/IrP5Zido=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647596485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MwJBY/KlsXBuBCvdDxEeKEfJGuaDEB0ykKlqEK9svms=;
	b=XSZ7dhqkOdPWEnM6gIgWrNO1LFxl/nGxtBGDbZ3z4QjIxpaTzl82EWpoQ3eQp/fX
	MHfGfUIzz2N9UJndqR5c0sMGWCjhAgrsGck5OPU/71v+/JxgIYR3XZB4G0fueeNaUW0
	Q1vJbrln+JoFJEHFHA1Fm3F1lpnnDPlkOCPkxXvQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c67390d-9c7e8026-7812-499e-b856-c6d680cf3735-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9a6039a1efe03c49cf82ba0e4bd45a4ad8ef19e5e1440de0feaa5779487352a
Date: Fri, 18 Mar 2022 09:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647596484
