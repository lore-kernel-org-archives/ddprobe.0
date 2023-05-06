Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7677E
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 04:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5A4C433D2
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 04:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683347285;
	bh=IqLU8hBAK1hovRRoPsRD8M5aV4eAwGKwJ8Q7Ka/VBEM=;
	h=To:Subject:From:Date:From;
	b=VLU7c4HiWEhlIy3QIF6Sl9gyQ5YzDzEx8eTbg959EYDciFNCMlTIeKKH8aX0dRzXr
	 oimeFT1ehp5Aa7AbNtL1vR/S/laLlFROVMdVSfDfQVvmDhDVK6YmJf0A37kTuLYDcR
	 Ao4mUw7QKQej8oq0LE6XC5xtENbRaYrdSkxlGSv9r3FPHvIice7uV6kCzu+wcjNFHd
	 zcoCZAQjUcKlbDtCqHhHnD7DbHaijIYu2DZT/xM+Umpf6sv2eioE/9E2vyjU53iOxM
	 VBYTaRXJe/dr0JGC9si7zv29O2n8695E9s8w2TB9icHasUUGYWcdr7pNyKVrjzyUx0
	 SrZQio322ucCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD1FC7EE21
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 04:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168334728577.5043.7106759890774044136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e3bc7058eb22786d18c0a9eaa801db94e4c1fbe1bd2eb7f28f5b3ab328112a3
Date: Sat, 06 May 2023 04:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683347285
