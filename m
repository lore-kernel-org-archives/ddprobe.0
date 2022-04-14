Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E09893219
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 19:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649965258;
	h=To:Subject:From:Message-Id:Date;
	bh=IzVYA4eF0BO2+Fhx08H8Y6FsUDluPeC9dygH2tmaU8s=;
	b=R2z/jNR0bg8eUwTC8L+GqJvh+4Vd+vLlMUlCbpDvXYvDBFRU8yVS0Qf3TbDBiR/f
	fXyeCD1B3ZfiKAej5h+XqJxzzgDF7V0hPqES5al8d4DBoAVW9aS1Of+pmnimOxKARb3
	j3wfXTgCiUXtVmUHBsb1H5/XD+2eUnbON7XF4xmw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649965258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IzVYA4eF0BO2+Fhx08H8Y6FsUDluPeC9dygH2tmaU8s=;
	b=XxUd7ElJZm7YeQ76WmCzHeO4Dg1L/weOcAEgrz5uT6MuVv8V40eZ26lq8oKS4Bni
	LcnNUokXzsVxW56boulB+JE+u7JX1XnxMnS3Cnct4rVIBKWNpdPmf3e8RsZt3I2jp+Z
	1dTR0gwkztQZIUhsvROxUQBTDurU220AAAH3GYis=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802997d631-7fa92184-0442-4439-993a-88b4e1b6ad8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69bd40b4705390a7862cafef10976eaa532cae4afe1c9603c790777cdad55368
Date: Thu, 14 Apr 2022 19:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649965258
