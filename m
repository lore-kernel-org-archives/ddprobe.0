Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0AF123BD
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF3DC433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663101653;
	bh=77InteBaFr27w0Fiq2t0ArD/IBr6+jvyfdbLKDbFSZ8=;
	h=To:Subject:From:Date:From;
	b=OHFqXJtk52xIZBQr4zxUVm9Slt8P5AnFAqAr0Q2MtzG44HAK7H44t0I8t263Rx/pQ
	 gAfUNa1tOCIKppcoCzToH/NnmEfIeUg3ZSVOo3Xvl9u+txxHuMiIYQuvnWzedP29ux
	 sC1XbzKud2vPOmPyYeGzcpIbGfwmy2eoEVO6tRSCA6Z/V0X8prqU0CyzDTgsvf7I4M
	 BG9LwfJcwr9Pru2wELY1TA3F9UJvpgX1cikLVem42BlJr3OnRBa4GTftyTWrGSzbQu
	 GbR6vKWEJ0IrWGKKTGEDHvk+hfZRF48CHfC+HdCzjNM8ur3/SDqPSQOBekNZFqRq5b
	 T7GkjpDZoMt9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B61C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166310165332.2505.12193014986690294383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d5d9b2bbd42a21424c9ca2c00df1a65ac67a630cf175b2c7ca1aa768c238774
Date: Tue, 13 Sep 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663101653
