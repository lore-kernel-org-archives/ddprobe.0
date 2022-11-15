Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D699B8AD0
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AA2BC433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668549654;
	bh=Yr2V/Ted7FCyEsqw4nqsl1N2rZTmfhQYljxe0dXVZkk=;
	h=To:Subject:From:Date:From;
	b=CnJgzGIUbZ1DPghv3b2FtWNJhb2RjMcFK67vegkAKPBQ5qNdR1AJqpXXCDbTB33W4
	 QV7yxbVuzQ1EB07zVYspcv+Y88WCJIV+ZhxmM4ulNOwLUAIff8jvOqJVoJTnZmFn0w
	 yCyu/qKOAmzo1mc8jJpHKx8BKYuVuRLOEtkH8a97SQlGTPCJHcO4Ke4WSa5esmuGQq
	 FdCvJEkzE/dqiZI+Zf6Fx/aXvNx3WjQGFOB3UQuwSLflNjnLX8efWULroRjGJZcz4s
	 adu4CsjdebDUhHE44J4IDGApg7gB2JAFk0NtUsdVbUgAy1RjKyGjevEa+k3ahn8kzJ
	 t4aEW4hcdDkRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 678FCC433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166854965440.6029.11993057073808510352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef175bb50b2b8609cc089af4fe2cad56fe025180aa9302b82d606e8a72ac7e3b
Date: Tue, 15 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668549654
