Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273092367AE
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755692994; cv=none; b=maYn7s4RM6S41gzddQtjri73Iuze+KQiQoVUin6TIUXgeQ+QL2tTZqvhwUcWRks9mQ4nKPv5KBOYB/u1TLEElFvYKylWd/pOzRcE2GG/NdokdUIGstyavKoF4ZuqlARlfy/nuTrg61IUeIDabH9NnZkeJRGCFY/JrIvcHifWmeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755692994; c=relaxed/simple;
	bh=MbuAgrHJU48C6cGv++YIBGHXMRf9oYHQB8PIhMbw35A=;
	h=To:Subject:From:Message-Id:Date; b=Rw8jvUn6Wj2GXV3Hxw6yUK4s8eU7S5U1q5a6q8FD6ITGP3cKaAe8Ua+jamrneLqYm8+tlDkjmzQ6q0Ipl7HSFcemXRJmLh8u7liGedIC8xJQ6h0K5XCySB5WvtnHz6vK5jxzcovkw6Hq4TXLK3e/Rr+ZPDgoshBn8/Uudz+adY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbU6mEYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbU6mEYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AF4C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755692993;
	bh=MbuAgrHJU48C6cGv++YIBGHXMRf9oYHQB8PIhMbw35A=;
	h=To:Subject:From:Date:From;
	b=cbU6mEYn/PclsCvsMRU4GRjLrzZgyVz0z7zmLFHqv4KJOCitsRXh2tIrSNWBcB3XT
	 FjaFslHpyXGC6u/CUEW1uuLA5ySFtOTMOud5mPhWn/W442McTuLgrVAK9JTyZLNqwS
	 8kL7CPMuBjoFlCCK35xfWicAXcta+lzfUbNGFR4Yyr5WECtDe6AQLhsjJ8t5MghfXF
	 M7vSScU7Ur2x/HIHxrM7Th0yqksj9cy4T0seNbOWKMSz1fOJqkff9E1wHJOH8QgrJF
	 ZpIc/gQRWKdLHjz0KXlm4IhZY5hVwD0XiRY+M9rz2W/Z9bCeTKDUMwr45A24Z2OS8F
	 duRCydyzJy3xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB42CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175569299357.32205.2434642577036894334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85fecd40c3794ef627403ba6aeb95a6fc442f130005e32805dcd93e677cc2fe
Date: Wed, 20 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755692993
