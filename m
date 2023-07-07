Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4176DD50C
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 14:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6DCC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 14:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688738828;
	bh=0zhuxrm9+WWL/MFu+1wIuhjVhWBR2cMuP2nl0Lsxp+8=;
	h=To:Subject:From:Date:From;
	b=H+9rcoMCGjU2rZArRisqRqWa1xfKRczL7iYxKZ7NbOrNTcE2rqRVnJaspG7/+v3cD
	 MwpFphw4PCnQWFyOQjP4QJMSH+nlscJZwG34eudBjqHmzarP7Jyw/Q2oh9BWbHFup5
	 Ie0hN/J5JMi++WwQWVD/x5jvIv8ipG4wG2MFyqPb3R0/zmnjDC+EONWFahZKQrpSJy
	 6GTDigU1dWNo4WEUneRw5Ro/UwST3SN01XhhLu0Am8F6QvqLej4eI2dVI3GnrzdNHC
	 NOHlut7jB+THyaPjsbfR764avn9Yp6CC0AYJ79QqswzhZJw/ePEd4szKZEUEh2Gqqm
	 sO+AHddlHPdEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFADDC001B0
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 14:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168873882870.25788.12539183202155916020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f351046b10c6fe3a5afcf00378f7681163547ac676ad2fbd62bac8d4349b3aa
Date: Fri, 07 Jul 2023 14:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688738828
