Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477C2111B
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 03:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C49E1C433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 03:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694144048;
	bh=SyIIeg0qFQV8yu2WpZlhCsCDzRwGx85zWo3HstXHICE=;
	h=To:Subject:From:Date:From;
	b=mL1h31UwGyeT0pNLP16iP5WmbOsYfYHiS8WMj6BSCMmKV4BV8z9MuVTFjZccrI4cS
	 GvjCIALS1jw0VhPcxsPbR370GmVhQb2lnPoq5lypBrSmmdQ86LHxQ5/YOnatKwef23
	 GNMJc6aWW4trg/KLxzQ4YUstD/B9DR2o94pVsM8IXXC9f6Fnev79XbOdRMaBOaaQkD
	 X9SiFpdF6mJmEYx48ntXIyE+QMPyZtMnPkO0wG4S8SzYdoTrjMiL1i/F9x6mEoP9h6
	 9+T/Ex4COIwBmsWzexmyBkThan6JsyueHT6Q/g60norcMngVuca6CEImukLitHB1ny
	 mbdK/aiVHgsxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93A6EB8FDE
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 03:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169414404868.12082.299468029087000580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb4238c63ce86af9b6a803c362c79ae7e15ba50ffc0089f265d81ce597ab391
Date: Fri, 08 Sep 2023 03:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694144048
