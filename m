Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4DF18F6C
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C276C433D7
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669653654;
	bh=4VjWFF6Ua6hGg/Wu0LE69qntmQCOp9BvosXrasSrnlI=;
	h=To:Subject:From:Date:From;
	b=qTE7hEIb3B9CdAcha9mp5IlchY6YCWPY+ZCIja8mRJyo1BgdjaZdMVMV4TmltiOrt
	 Q5B4LR5vN1pHVRpSRQGueXr/0dtULYmASiQ8tsNKuQhlaGxLl1a5IaMwIOokplFfX7
	 i1HbKjkPwyUKI1GhaM1YKVsdqK9PROWBjyP4ja+7SHD+SavMbUFOUD6yUD0bLe69TK
	 GuJYMZ/A/Fvkgd5W4nXfEH6Szdp4PjPOfy+4G3IaSQ/sYXG2zIxoo281lKt5SgNe+U
	 1ePCbF8uR607enyoylPzr4Hp9r3Tl+eGr4Zbvt8e1t2mUVQUZUPDPIit7Vy8PXZE7Y
	 omrytRyocheLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DBB4C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166965365437.9801.2187866073740734969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ad286921bc8525dd069bdd586f146005b4ad3fb6a96948ec022acc75e165f1
Date: Mon, 28 Nov 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669653654
