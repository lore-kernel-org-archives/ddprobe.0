Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C09184E
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 15:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C0FCC433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 15:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668265854;
	bh=mwPnTPKrK6l4iy5viUKOFRmibhZYEjQIlFe9xHn6h+A=;
	h=To:Subject:From:Date:From;
	b=HkTi56+kacNTwsblj85G5v2KpgpioAvmUu1rhLGzn3rxzPkTPxrhk69DwoadLL5VM
	 wkbdFIWLvKGdjZWIOVpBrsnHeF/kBNaeaibw3hhIZbcpEmE1GWJK3xtW35LCdWM3qr
	 vFZgrnC64qV+HRuLufALOvlbeufOAdIAgz8eLfU+gPbzOrNpmrGJUEvoaLXDbs5XDU
	 qe4pwxhP2EWwpKB2diypW4foYMK2MtShfNjZNhdRgY1Z2adILeyc08y/CSvElZI2JN
	 3CZp+jHvHV+LZO7uNgdq2Tjc3akrkX0yrGdV5aykMTlwDA0VETEMgR3G7AsI9AKAXl
	 +Om9ZyyB13y7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E6D1C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 15:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166826585431.3373.8343750014971254584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e02ffcf5bdcf3c0c2f8f21766eff3a2afaf60a090514d70590ea915b2887dcbb
Date: Sat, 12 Nov 2022 15:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668265854
