Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34A86FB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3FKZqhM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD66C433CA
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700912896;
	bh=kBnfOUqVrNGg/Vxm1h8QXJDBaTY+AoIrIuCZoFTh4Co=;
	h=To:Subject:From:Date:From;
	b=l3FKZqhME3S47VPxe4Gb8xSuHb5siBJEQh2ixYcvY7DkoW5Q9fjBcUmrcMDPlK7tD
	 URzh/P+lm86bx/jia25dHAXPIV4D+q9a04Dy75UYy0b4VMwgmCSzG9Xd+U1a6q4m9U
	 Z8FM8TPtA4QQWMlY938nS9NWezpd34muQxZ4A6MljmsWa9C5wTUe80iMF7+lmGM8pr
	 L5yZ9BLNz0bGLu1+jHz7R3yOwGPlIUyjSHdKTMRS9JuCdd7pDvMZNvWUMhW5vDcA1i
	 Sq2MrYnFPpa6IV15J5Ze7CFxOeu+9Na8C9umH+UW1zobvMgQixQ4GxHHYvsFJ2K881
	 4esCh+n7YqK5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F59C61DF4
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170091289638.20987.9177737349558497306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 855bd256ef964c42280a2e1963adec1c4a4937c3d37f65ad0ae060490b2f9622
Date: Sat, 25 Nov 2023 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700912896
