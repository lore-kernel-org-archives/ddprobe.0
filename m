Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF84A35
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88864C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670574087;
	bh=rtjkmYgx0WlKvOok2LvJxfN4Aup1m0DE0zkNpzuXwOg=;
	h=To:Subject:From:Date:From;
	b=Y6/wwRL3u5K+MxJBipFL61pq/dgwHSF4bXFbVzNMUh3maqORvrShzAhjFF1z1SYXi
	 jZ2oFiKdsQjyhajcd9uMjlR2JHdvkUxvlEc48LjmPFXCyZHP/ahWrT+am8rqpBg0a/
	 NzevMUnYP2hFuhataKI+3G4X3LW52bDKGgy9OkYTI6neNgAW4vV/xFRSRLTu7vgArA
	 H39LD296kameosY9coAm+FYE0E04IZOBbjIRDx0mgGujj9QAgIqS5vWNUIFvf5Z+a7
	 pZlIn6jm0Q0WgM9fhfNumjQDWl4U0kZqiiaepDHAcJZjneijT3yCk/XZJgTPhZf2Ts
	 kasop9t4nDgDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69902C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167057408740.6553.10662032813682523250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ed27ab6e8497c1cf474457679e4a7c3aa8150dd1fea068ce804363c2630acf
Date: Fri, 09 Dec 2022 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670574087
