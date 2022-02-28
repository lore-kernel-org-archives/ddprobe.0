Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A936915C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646079684;
	h=To:Subject:From:Message-Id:Date;
	bh=V7N/FFA3wFxvmFpbnU/YPRoYsZo9IXl2ProB5qRHTCA=;
	b=TdIVw7+nrU0jE9Ff5833uIRgBknDDunwLSSiT99qQF64sfgYqtSDnZAP+CnWgfVX
	JD9c1Vo4Gyqmj74pVCpn3EgYFtJ8ZSR+uF9eyS6UReWOnBy6N3HxlZ1mjTDkWcnHr49
	ln207Hb01qLe3IrsqMT9kQPJcxGKOteFcZRK+lSA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646079684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V7N/FFA3wFxvmFpbnU/YPRoYsZo9IXl2ProB5qRHTCA=;
	b=V5L2w0ptHwXUN6y+SlZNn8OABjzX51MqpxfB1nWJGZaQBvGIdx6ljZvY6QLmKd8h
	Qc6jjUgB4cVkvkWk2GR/Qt/Bd+XKGj7bpPKMLoi6vAHPdQe3RQbohGy8uS4cSoUi1AR
	fnCxYVmBx7EulZ5IJUtKmMIeznaXdzWb8KTX0V/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f41feb0ac-21b66057-0e15-4dc7-922d-13c5b2c71372-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b996e1ed4162ec6ad6b3424117eaf8806ef18797a8fe48c777d23ab594d5cef7
Date: Mon, 28 Feb 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646079684
