Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7CD7E
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 02:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651028338;
	h=To:Subject:From:Message-Id:Date;
	bh=f6v6rLTK3N2UxmQSP75qKPfz0r+WT6UcwFY+Hx0pYPk=;
	b=MDuQDYR29cnKAilQcw+s9KWVMv91SmCfGLW403pDMWvkgtWqL+Q14R7LKhKi34wY
	Es6cGq48mzcfx91QVGPncnfjTcUny0wz9aCwwWiSv8PDJdMlc+MbNn1JmgUwv6B+fPk
	oPck53JTtpJJqQP5rZFBuXIGxFtHxDd8OJID5wfA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651028338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f6v6rLTK3N2UxmQSP75qKPfz0r+WT6UcwFY+Hx0pYPk=;
	b=Vc5JpNjKmEhQMrVZ17hVS6maNRlsLZpdjXbLgKFIavXGsIM2XtYnOppsYEouhIwg
	zegv82dzM43m28ROHmqmHyKTgHgmckvYO1bsb5SK1AqswlGpfVdtaJ8Cpnm2tn73Zuh
	YL0Xx9IbcDJR5m6+ioxTfH4fKIduOXGaK4b0u2ko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018068f52694-e5d2bc02-ae09-4adb-9031-638e0240250d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9a9035422d5871db8fcf53071d4675da994181ac03d75de56411b34fc292dde
Date: Wed, 27 Apr 2022 02:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651028338
