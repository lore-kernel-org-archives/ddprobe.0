Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8613D33D3
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 14:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647785184;
	h=To:Subject:From:Message-Id:Date;
	bh=A6o0G++pV1Qo+ZLSGSZvqpDusMfMWKsLLUhY9xMNoa4=;
	b=OrBk2XOOrOPHlZcU90JLZ37LkuVA4IjQwUnsozu9iBm/LmPP4Ed4op2kdsypyqFJ
	qf3ojkHzkqXpJbfXBnTwquqQkxdKYGv/WnCyQenmnyoHsiKda+m7h/rKofUoC63lPQq
	PjkJyPMd2lvTIp0vIJ2GNLN0ABv+KPy3meK6lh88=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647785184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A6o0G++pV1Qo+ZLSGSZvqpDusMfMWKsLLUhY9xMNoa4=;
	b=HmjED5zL6vxx71glM0FrzOAuwStgPGL8HS+ESoBQeaAPq03aYC8+OZXO1IQ6FRZ6
	EgISlcnrYy16q+Yx/dEEYsFizqNXEQj62Kh6QICwv28eIC3yS2zhT11oMzttL5uMjrO
	p45oiFTBiR+sT+Tlran1frNcPCxzS1+01eQk/JPo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa7a68dfc-fb9b4c68-d2d8-4f55-867a-4ad7d31a4e64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea9d420194b64851012975c4de65f03ad86da6aaac55914a8f59f5fc96eae1b6
Date: Sun, 20 Mar 2022 14:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647785184
