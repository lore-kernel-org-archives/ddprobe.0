Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBBC015B6
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 828B7C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672464687;
	bh=vlcvi3IlQ71CeUS3KzICldFipvK7oFe4evRz4J+xxe0=;
	h=To:Subject:From:Date:From;
	b=UaFalxWERVFhD26l+zRzQ2WXOSgLWX7vrazmoqTtLyPJ7BZ97SDokx1HKPVJcRoiU
	 QGrz9MWht+BZjwdBvY2GIdS93c+Ec9WTzf6aK/Zz+HpyI1ClPfZ6gvYV+vpIT6003E
	 NvOx9DRp4OqdE5ZGD0JhPp471Kgz2ilPIgGjjC8p6cORgYWlaYTxjsGTIVjmA0aBOZ
	 2mouV0KSw+17IO66xtoyMSn4XmfeeZdrq7fc0TMmoSnsLNIn3PSvNzMqd+fx3S1qbG
	 Vn9uXCLMZoea/cjt+JJeiC/n/IAIrSjiaONIl6tQacvYWJ1g1nJKri8TgHLg/rQKuF
	 6O35rcYP9yDpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B5DC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167246468739.11557.5118696666768874862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f938da7ce4ad04613294034002113ab258e3f1ccd8f441b7afcfa8f72ef8cdb
Date: Sat, 31 Dec 2022 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672464687
