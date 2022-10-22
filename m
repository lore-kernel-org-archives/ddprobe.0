Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D9E7B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D16C433D7
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666409453;
	bh=BhH/9Z161fqNHYrMjm7KlHWzo+Bjk2mhrR/FtIb97ic=;
	h=To:Subject:From:Date:From;
	b=iVWNmWsXVYPa2mA31ZA5Tb7/1EoM6GhqenqwM+cz0cvyApwMZvJ0xX+b7aukoSuNw
	 233jyszKjNAGtITRwT+SBzVIwB2M2PgAPIdt7B6DqofE7S1lF72DXUueaHhDVPnMcS
	 +s4LnP5QGBXSpHppirZ0kU55pgon3z7zJ2UuLEGUW4Ls5D71+K90IEBOd2HC50WZH8
	 GuPE6MwDWuzF6CKYhRL5pHb5n93AzY3os6HSX/T2sIXopUaGyJoNHwtxjEe21R0dHb
	 WJunS1r++Oky8eK6+GPJLagNWof4WMVEcKkgC7DSF+DW8vrf4wHK8tXNfQ45S6r2tY
	 UPoCQqS7yg8Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF8AC433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166640945334.21906.10994578108867600486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e44ce3c345c6d1c7ec62bde387de296321c1a200ca6b9ed8a65cc3b55d720e7
Date: Sat, 22 Oct 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666409453
