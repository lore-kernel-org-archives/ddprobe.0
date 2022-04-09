Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109FB622
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 01:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649466538;
	h=To:Subject:From:Message-Id:Date;
	bh=zJFTEyKxS4smtdI22ak9jlN2ecTGcdxM/O2sW2N1+C8=;
	b=kLOcnYw1r1l+FnGrMbLamaKL2ynSGRkBx5NQo3Q/LohkdH2mKwh2hFue9e8yefHq
	R52VorGffDEWw8XXnABwjVPZyL5nyPsohJ9mUEr89y0hP+XdumfR5U3+HtmH1fww8y+
	NsFibH0miTG8jcEo38HDRNcU5yAWy8jd2OdiXn4I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649466538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zJFTEyKxS4smtdI22ak9jlN2ecTGcdxM/O2sW2N1+C8=;
	b=hAv8xbZULTnWVt0AeZDTx808X+C8npxd6stMO7gO2Fhff1iHXl8K0Seq8gMPHRyg
	of5e+X8XIEMYQTt1jLL5SP2IRifkypg7Hv4cMb3VfhfTtMPllWDSowANQFg8xvp0c1O
	QvYdO7c1yg5QjqUaujyMecQ6IP83bJSY32a9mfyU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800bddf944-32e04305-06c7-4104-b830-7faab76854b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f82dd1137d5318465f453f3221b07d68c3d910600104255032631f72ad1bcdeb
Date: Sat, 9 Apr 2022 01:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649466538
