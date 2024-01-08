Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E17C8BF9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/mbf0kJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8223AC433C8
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704696496;
	bh=Q3cTe8W7oVu05oyY4fOa8hKvOqyhktdB99uufXZChO8=;
	h=To:Subject:From:Date:From;
	b=q/mbf0kJdqyWY5FTfZSSgWRItVDhP3xbtowIbZLZB77I8kJPiblN7KkFkh2IodFc9
	 UCSmPDay8pk3IB0ks5zhaStKV7XGk++kPQFojODaIlMtttkB4TunuqOHhm0z5C2WF3
	 YDROJ7cWVnrWE/DqL1sMLWYE+4pk9Ra5e0YoyhXv6t8clk/7vzFTilSt97n+00sqPT
	 /kkrDmQ3kVY8TNdc7IwrPCxcfuVIzT9OrgTfi1z6CIMv2SHOmucAk7thHlEblAqbZe
	 KBBcY6LzWBPHVUUAlZDPudK1YH8Zu4GNv6u/Z/byJjfymtAKlq3fO0VhOxA36KJUKx
	 8PjP++9LtUSIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F57C3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170469649640.20521.4663455170373788847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ba72465126fae44e8075404d76c5cb8d5155b958291c353d788056f5e0cee9
Date: Mon, 08 Jan 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704696496
