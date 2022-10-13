Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B665B20F8
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73E8FC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665648053;
	bh=w+l3fCffNbcjN6M2YOfxHKejQhK7THwFwgFrQEUwjEI=;
	h=To:Subject:From:Date:From;
	b=oXG6D/qSHG4yK6aYPH1tyoQ2wAjFVhotKrGK7Wos4aYfL0tSuQuyg4VzE0Rp4Ynxg
	 F/cuZZnyCT03fY5ik/0Nmh/KiO76ESLyXMCItU1QoFUuKRk3OUzgww9l0HWGSqAxik
	 SViRy6Nwrkr4ZXnseXwJuwWd+sVoI9uCqbADau8A+B4DklSesIG4Q0/F5jzVfmYjPH
	 +6OivRsUs5oSoXQ/c5HQZxjpJLQ38hVHt5dNNxA5NG7HTaWpztYwzcX91TDQMN9a/B
	 bqjY4Ie4SdYA3jlofOmByjDVgHlK0rWshUMG9RlaTQHBRswD+fo4XIdxpi5W5Su5pn
	 gAUVYeRdQqXEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE0AC433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166564805336.18804.17841877485794442495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b9f837e878cb69007b14b34073fe8b9a1cddb29b947c5c08bd4911cd30dc17a
Date: Thu, 13 Oct 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665648053
