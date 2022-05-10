Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F7C23C2
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 10:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652176979;
	h=To:Subject:From:Message-Id:Date;
	bh=Itz2tfPlw5Hwm8wdIH9nNiKTvmXNJitI0fHL7IIeB2s=;
	b=G8yq8yADtMeGbHoXg0tTBP8ZnERzG/nmwq7605CdDCpho7p5Fv+lmaZSBYQ7SEFW
	ZUmd/q2i2zjs421KaQqDME3JTGMZ5wvGIpQlKLNS+9ytoqo/VB7HOyK405dWzGNekD+
	T9AkkNIrA8aK6K8dbiFmUxnL6kytiHRBf4cbmmFI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652176979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Itz2tfPlw5Hwm8wdIH9nNiKTvmXNJitI0fHL7IIeB2s=;
	b=WyDWiIQcWrWMWkXi2G1PkBo+TYVlZX9tEDaXHJ6yGS5wJF6D5T/ZaEtkPfJbmalr
	3G/TrKTNbowQe2uc59TQGiumk2PLjqt5drzXk4ex7j9EgKD8Nhb3pF0stv68xSkrPfi
	BRXh2Qbasqo8Kmd+YKAQ4KL3op3XtR6AtOm4pYKc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ad6c0510-922b8f4e-d304-4b1b-8f5c-8bde31cedfb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50d44171cc77844796c4300a18e666720724d1b603ed635da8b55c561c84d41b
Date: Tue, 10 May 2022 10:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652176979
