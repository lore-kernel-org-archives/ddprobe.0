Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F28134CF
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744540194; cv=none; b=K8cacec4WVec2U33Sj2PLg4pTanvK/EL1+dPSiS7NJKmfR7lSk3qXr6gM5WJLxsgwXAtrW4HIQBWshsEd34a7I97sgGTFu/QJWAhoULC8PfP0WLa/C661WqRkKLT42Z7CARqSaTigGcztaAnFgQCCKvj/mizzf5D3LEJfx+4OOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744540194; c=relaxed/simple;
	bh=qhHYY0bWZVwt0tgZYgRdD0rA3N0K52OEhjOwoUhHSBs=;
	h=To:Subject:From:Message-Id:Date; b=sDEUMgpMhfwy9mOnG679QUTltZ8y8oxafZN8FJQaf6ZeNlzeSDF4a31a4NDPSbVm1mJ4qKGQ5kVstrf4lUWQsqFaP1PuWVyPlDyYYiU7q9NVV5oOiVwc2kTwi88aXeEVQo/5VoaaalJMHEfNkyPmJbhoSQvEOqBbIA5kqAIYo6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVeCyGcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVeCyGcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8251C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744540193;
	bh=qhHYY0bWZVwt0tgZYgRdD0rA3N0K52OEhjOwoUhHSBs=;
	h=To:Subject:From:Date:From;
	b=KVeCyGcsh4Fjv9xb6j8tyZ6Sru4Z1uNHfs8kFQE5ZCdhM52mzGM1xs/afezJOSBYY
	 3P4gYS9eYZ4NbA1EBYNno4bdOd2urjEZ+LaQ7q/NbZrjKIe8/+gTD1F7Mfg+u+7rqe
	 CC7Fk5ZlNk1C8zxybJjfTO4CwEBlUoBQ7db0qUQuIKJAKu0dDTumwE+gVa21ElTI6Y
	 B9bVNbw9eIe8v/LttVVYtn2vgGKDRERBYtYEAFMzbe9eHmBxJ2AKqoqcjghhKOvbo8
	 vyVRsnEH3QUfjbvHm5SndkzKVsow5E8KRiG3Ewm0s8doK5Aqmz/pFMm2Ivci4dzGPy
	 r8q/vsCt+/3fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A30DBC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174454019362.13855.3956907840756558639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad0711a254df6c58f077de37c899b65b419b4705981fb3516005bb6addd0e50
Date: Sun, 13 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744540193
