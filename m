Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F4720F3
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 12:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10520C433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 12:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676723166;
	bh=lwzVJoq089JO9Vt4k+cTbDwe1lIiEaYZF3Y/FQR32rk=;
	h=To:Subject:From:Date:From;
	b=nLIFfJV6M4S7zgymfrqJRi58vAFS6lL6W6w3Qd2VoW++iq6uzyua0ipqE03IMpLUS
	 MI+k927kTu2TE80e9u29x3z/ew8bTCtDcehicweKME4pQrr9477kaGJexdOUnq2LCk
	 kI4QmxayErusPVxq2fm2Yat3yIC77CU4eGiQ11AvJFeSPZQtyMmIU4XnVEw6t9QE12
	 Owc/09qloPQ4QYiyKWO2BbmDtlZdTtmWJe/cCGEeHPIlKolP8CZ1WsPXd3//VJHos+
	 8PV+xsW4fbbRrQj8DmCTZPOPOHu/78hRqY7PgvpLCbvCL4CPrYYK/O4XQlhJ4VcKOt
	 P4cXDyq4E5amQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0466C636CC
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 12:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167672316590.30364.11450429582049731907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12e15173b99c2a3d32a6b8449d83ed66330d7ae02a0c16dd676b24b53f666c20
Date: Sat, 18 Feb 2023 12:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676723165
