Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D7687E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 11:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658576212;
	h=To:Subject:From:Message-Id:Date;
	bh=o1AYfwmgt/RonU72c4ZAtimxkfY0va5TnMmVYsETdks=;
	b=CGhR+QXicEvJyfvzP6e8ttgIty1wXxY+13+G9UhLfQY8hZxtge9DLW0vYq4eA4q/
	qv6/Cq30Zmv7Cf7acNDBMD6Bb9aoME+TszPPDFt7nqUpkMdMGoxEyzVCww46f3GAjD3
	c7x2eFTHro5DlkgkOWn38il8sZabgPGR8GfgSiRE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658576212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o1AYfwmgt/RonU72c4ZAtimxkfY0va5TnMmVYsETdks=;
	b=SDqZ4AEcdvvZj7QOJiJ1IB7Cc1pkYcP1P9GwraDVDtVRbsKkWlOPhzcXQikJbEvX
	PQh7/b0+Y/wql7Ehzi1wKTGD6B6SIJW63aoMJ0XmBV4hyIg/4EPRwmImscLVq+qwuW/
	UKmsAgszfgZ1jzkeX9jYacn+ZUpnsH58iQDLG104=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822ad89135-99469ee7-3fc0-4c38-95c5-0a45f3129f47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4cc7acab7804122e493b575c061f6379ce61c4f294ab74378f80c0e39f0dcea
Date: Sat, 23 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658576212
