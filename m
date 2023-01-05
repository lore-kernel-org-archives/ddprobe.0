Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80CF10785
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92434C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672949487;
	bh=hqwm2yLMKLRxAo0YJlNeBx5paDtA3+GBC0JL92B5Xbs=;
	h=To:Subject:From:Date:From;
	b=kpbzR+XheSMUyU1XtLPuEC1QqBCQbwcT1peqnq4UA65u96zHqbFyxGXhh9ZP93KPC
	 70diwCdY6m4qQ3SblpNFS62dIQOJjmf5aRPorkN7ZINJKb8Ehqw0XTZbCStUEtcTEp
	 aieHonWytDpDyT6gZYIPdMjb/x9q4ABkiObUmlRPcvB6unjkxh/o05moLXM5lBY4u8
	 2pErqzxQLiYUGrBUXY/UKgkCEQ4KG7QrMRFPCURRIgIPpJn94TSGOKFniD7WBRSBnS
	 ATuCncZTWzF9eHq9Rxnanpb4SK98ABb5S+G4en0WVrZQeH3xQJ2rJ6nIC2DRJMFeKg
	 rVRm4unsimISw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76439C4708E
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167294948747.16444.3592827334707378476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90531cdb9639eec81197d853db722768109ab4acc67697c7d3dab9384fb269e9
Date: Thu, 05 Jan 2023 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672949487
