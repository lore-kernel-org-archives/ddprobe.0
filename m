Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B031217D1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6386AC433D7
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662443453;
	bh=FNuzaH7ZmGnQTAzMbfSTnNODshYQ1EOEUojGqJHUXAg=;
	h=To:Subject:From:Date:From;
	b=pgk3Ljfs7Iu91WbiK3MVahaIScqjpcW9+Rcp67+gf2nr7VehotF2987j4smldpwhN
	 CD0dh7PYdpvJYpGFge2u9l/AIQu4zfO0DjryqjsH4f/f1riOg9dz6fBaDL2J1BBW4I
	 2uXwoPNsggzdlKKLEfr0B9wVlaybtLwIZfv1aOjzbgbaf1FJ1cjKzZMWsanyxc2jA8
	 EF6GWFR13V/5UZG00b0pdW30EKfNhpPVCJoncypzvEhSEkxYsW9jxXn7boQDlew1Qj
	 fhEP8452UrmLC5l7z7+NoU/S0O5qw5E3sm0p3QRUb1S03i19AChY8s06/thlF+XQpj
	 mhFl+ceyBbBMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E76AC38145
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166244345331.13262.8597627907406541637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a006379356493b7a7e9bbef3e5874a388911399c60271eeeecf453b73dd7e904
Date: Tue, 06 Sep 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662443453
