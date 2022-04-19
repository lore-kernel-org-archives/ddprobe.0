Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055E87A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 13:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650373858;
	h=To:Subject:From:Message-Id:Date;
	bh=h09Y15Ar202zrnbMPgc+V1USKq4uEfqHumC1Sz+RQzQ=;
	b=b6j9ARMBaoysi/1HbVmBPF8EOo2fFVcDCkPqz+Ds7Fde59ngeSr53gdf0vOheoDV
	JBSYKNI2HQA9vvjz1GO/6QIhW7MKsZtqLmHYKMdAql/Fl6L0VJILbTlL2aRs0gr7Ls9
	e6tsblPDgkZ13FjsYRbqilKIeh8PmUzx8FIk9pSE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650373858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h09Y15Ar202zrnbMPgc+V1USKq4uEfqHumC1Sz+RQzQ=;
	b=L56r65znRdnft0ewbNuhMw3CvbL+h9H5paND4nYoX4o7p5x3ymWNIcwHoxkGY5BQ
	4mnbTk6cvn4bKYqOkMd/WAgz4QtqdeeQRmOAXn3JLvoOIDu6EdPiwvAEgoK/PB8b5tJ
	nt3CuHARf+ELUhFg3nv/yUMEGbZBTfO0Mai2rX9Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018041f2940d-ec7f3ac5-008a-4d1f-9264-8fc421d82ccd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d5e38a77939fcf6a58fbcb275731b483496d820a7d17c0321c06901721509a4
Date: Tue, 19 Apr 2022 13:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650373858
