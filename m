Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E0C20E6
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLJmmdRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ACE0C433C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705235296;
	bh=OPJxfxfvez/IaWaNTChDWZPBm06DLZVBuLsU8FKTX24=;
	h=To:Subject:From:Date:From;
	b=KLJmmdRhyTVM4OS9OZ3e73MrDjOPWK4MoLaQG2RCl+fhqX/agYBkPlIFn1smj20V5
	 45AgvpcbrKlonKJUXTC9K77i4pNUAwo5zvius4NxaBFv9M1MJERFzfzNn50d2Pxopm
	 gaz2rqgT11hfk43Wf/kqTTUzRRvqFmXI5sn7cyS5SiyTH43hMoM8a8n9uYJMDwT9n5
	 a8wnAkeboQhVPFSS4nPWPdm+6wQLBuRyZD08NTeIc39pedRId3qXqvYbpvqA/31Jlh
	 J7AkCIu9sNlghism+NvNF6gBJjxtKVjnheHCkFpHrJR0sC4Z6nVbEZGk/MSpbDCml/
	 YGyKIj/8/5j0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F1DC47077
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170523529637.12372.17085913786256986382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d1ec65ab073002bc3a53953b3cc0cb33a6f4f66d4d5b39e332deb1963cc6805
Date: Sun, 14 Jan 2024 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705235296
