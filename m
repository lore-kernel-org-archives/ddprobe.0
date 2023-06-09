Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 878E42069A
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 18:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11378C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 18:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686333966;
	bh=eJekFwSVEnQDvMbrBEljxXP3GrzENztsGvtJZ7A1DNs=;
	h=To:Subject:From:Date:From;
	b=uulD2Fql6MDCBJI0vKSH+qhT3BKCQRUHHAjZBdgwdfX+PZNvb+57oxUkhn/Lw5owN
	 mtwcHGOkr1uNyz9Hq7vLJOUtoF0VvvQhAWOtma7Ht6HR/guwBZ/gXzumK2ZKg8//JQ
	 +y6WEMX+7JNBn5ZLAVHJ/bDWMsPPvmxuUuywq/9yAVnQ4p8qGmENIfgC9dc5uRhk2w
	 W35G15VY4Xz/Hy9AP9UUPCgf9I3GiAJKpZH5T94fBy3V0V/2vt2JMsJKnAFnMMezys
	 o+XK/R5UDmbGzt1fKQfYy59dzf6kNJrNivZu5ySVaBqOp0vcQwsHkdwb0Vx9PvSfVW
	 UWF4c7PjsH3aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1998C7EE2E
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 18:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168633396591.2162.3604735407993766048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 102f0bb309422bdc001ec1108bcd4c7950b77e4be77517ad412ff47a3f651ec4
Date: Fri, 09 Jun 2023 18:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686333965
