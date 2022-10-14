Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054462F5B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A990DC433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665773453;
	bh=vSl3ePoNYlbC0F/+8HEMZs8dCUaYqO+E+lQAco89Ay8=;
	h=To:Subject:From:Date:From;
	b=AlJwRsO5h8CDTc3ggTO5A8MtCYyORAcKCkt7Wh46h6naIhgGES95f0L529VRvA9Fe
	 jGUG3jO7jJTnNwoOWDbbmtQSWWZDAJe4nBmcWEP+Q6Iopt0pIViftgwMwGNCdAdUce
	 X3kX2q7Q45200wd/2QDfcSbVrzUqI5IIXyB6lhw5r3EzBE11VT0P2ibn9a9NpsyHfk
	 1Dosj62kwpzgJVdWCR7z2E/czdZa+CWWAUVM9xnMALcyTOjmFCBSnkqtExO2H4nJkT
	 iDQCY7B8w0X+605MYE+LwznkaVsTuy/F9KrjvQMFzbTT5NRvLxKPeV4rnSQZFoZdjc
	 C/Fp6wB8znNrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8639EC433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166577345354.5020.13556847031133009467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 522a787b62fac22119fae58ebd5bd435630d62a1914e24056c8c15fcfb6f427e
Date: Fri, 14 Oct 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665773453
