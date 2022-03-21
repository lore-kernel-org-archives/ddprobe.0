Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C662E612C
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647894385;
	h=To:Subject:From:Message-Id:Date;
	bh=iT4J7VBdvIbTxJU2obGMm/beR/7Wk8QmoInlLpGRXag=;
	b=f5fzaE1I9sak1BRPgPwJvs6WbarrkmkOvK2/TFd3obczu/gieYcPvyWol6X9UdHG
	c/L5/VBZeOS4yYQ8mw6NpHgO2u9mkvMJ4nnZZAenLtdjFYHXCMN90t6z9PxsE+DBEl/
	rcmnn2Lsc9c83AxePmCcKHA74VKrv6oBYG53SQMA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647894385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iT4J7VBdvIbTxJU2obGMm/beR/7Wk8QmoInlLpGRXag=;
	b=k+NHaawePxWPRBlJX4SiX7HCxY2kckUwrNG/R51SOgoP6mfWtqg0bUa1pFDEj7k2
	k7oXzMdWYlqVu6U9Qvlc3nuji8PPCpOvHyxNho/i3Drvm4HfNe63unfFtYVkzLeha6d
	QvI/+pkS/xTJSgkoNXyc7f61MMMYPp3zUDrWI62E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae28d084-3ff76d22-69f5-4038-9e37-513c5019de0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ca79a8a0c3484eba930453a4efdb7ccdc30714231ea248dcccddc6120a0572f
Date: Mon, 21 Mar 2022 20:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647894384
