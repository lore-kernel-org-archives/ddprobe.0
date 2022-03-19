Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B93539A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 08:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647680184;
	h=To:Subject:From:Message-Id:Date;
	bh=L0nUqshHOKK2vtmlgsobJdgh06jA3apdb64bKAnYEw0=;
	b=ZfXodQJg44ROfEvtumsufsdgPh31kZHYnuTbipUVQGJSrgV6LCHwwNprNRqNuN9H
	xeZCLSmSpc7j8q6mAx6KyNcFLccRyGlWi9gL5bi4MHJsCrYHDMBo0nH8Aru5+Tcy4/L
	FO7YcRFAGrghBrnfVdZnd2oAXocz3qJUb4suWLF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647680184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L0nUqshHOKK2vtmlgsobJdgh06jA3apdb64bKAnYEw0=;
	b=iTahsyJbSB8gPlBsurXnvIasmAyU31jsM9kg9pRIONYZ+QIi9QeQ0lbECulAkQCH
	Ij1NgQA0sXNcoeqCf53WkG/B2c7a7hVEQrpfp8EcrOHVPlJpXFhdsGyKviSI358ps6h
	uegV+hL4sN+Ru1TLD/CtRCsPhC6HW6uTNeJjk2f0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1646184-e394b93a-458f-4820-bef7-998e105fda51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fe212865742d986ae6eb44531fb1af86658a8127725bf76961445b263ddf339
Date: Sat, 19 Mar 2022 08:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647680184
