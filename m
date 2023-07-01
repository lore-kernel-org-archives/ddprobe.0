Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E3FB17CB
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 02:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F12C433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 02:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688177048;
	bh=tNC8BOnP2+i97MgFel1b0CJgXUygniHGRnpOZG8dDQQ=;
	h=To:Subject:From:Date:From;
	b=DT/MQePUTQlFVg4dveCZ6O5eZarC0+6e/OKsbNEothgSY4vibyix6Q4TNp1ZX5Vse
	 fezwQAb3bdB7r/Ho9jSkjjlVjIhGlTlBvX3tlJo3wWHC1iNVEOQqFr5d5AS0Ew7brI
	 7jqMduXyM6K5Wlo7QkFWLO1yaaOcK1L6j3Ooh1C6AlP9v/0cTdWQGRrMICK4oZJPNK
	 hYE57HIJIwVw9YIy1lJJmCEA48oYjI0H6L1qAJRsYY6dyf07uvm7Lag9w7f3efPySH
	 6oFEfLsnrWRApUExetA4K6blPylaE4psgf6E/Hsw0nTAmh0w+atntv3amDFpCZe6R8
	 VKe06OneoIlFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C99EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 02:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168817704869.4730.1115181349108445093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1897183db98251fe7c279d395d990a619bfcda04625c8baa1ecc61844599260d
Date: Sat, 01 Jul 2023 02:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688177048
