Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576D218E
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 12:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651582018;
	h=To:Subject:From:Message-Id:Date;
	bh=l15eFLf++t/VW8SQbDGFXVxvwXWyqRcdM8QcA1y5SY4=;
	b=fGtnGM2RhvAnZ+EWAweaFzZWEdfBouyeuqPRc8pYEqIB2XxOLZnWtjyC9UKyIEl0
	7RgD4vXJ24pnJQ2N+402GAHMAxMs/qshE+TB1uO/Vf/fauS+5avvw1wK1fPmKIoJlWI
	86rxUvbgHSeHTsc5scV1FidQu864Xq3DCACQUfAQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651582018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l15eFLf++t/VW8SQbDGFXVxvwXWyqRcdM8QcA1y5SY4=;
	b=b3mxuauigANVOPrr3WZABC6ZVWSF8Zwl98wTp6sKKgsMAo70MjHpVRS4555BCzjR
	Rn83vRue7+bx0+4DaNYvebOcei/USyKL2QHVN5lgoIQVOSYoA+FPdRMXhyu6KFDjalm
	fzHlSqskboZQKs2Ned0PAVhOGxDUZa4SIG0XdrJU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018089f5a2ee-7e4e86df-3b9c-4f2f-91db-134defa21d43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: beebd65b36491434ca2c057bd134d6959991688638ada3a9511b75d78d15dd30
Date: Tue, 3 May 2022 12:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651582018
