Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0AF2F7AB0
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771697694; cv=none; b=tf+dFzsogiSeTNaU5he4RW9VBeEx7DPHh0HWIiiXU9Z0gY3FpG6QHUn4Fy2xzHpmKXIxZEe3N/dkZGh0sBu6nh5cVLB9FiRXx3NchZ9bYKZtfMCJ3QBzhoPEhuYA7LDJ3KFkQzxgiPpTqHup7o4ujlRRNnDJyNakcz4r7j4KjCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771697694; c=relaxed/simple;
	bh=t+6m6dxgMhCECpvsWDo63ENS7f2FgrHEsTR1+3Del/Q=;
	h=To:Subject:From:Message-Id:Date; b=LNvJO4P+/AMORUQEMfBK5jW4W36KbX2VgYNqoVwgf/TxVDcp6iAMwppWCVbZ8XOYjXVZ1Z+s2tHXp1dsAl454zrvH/FFqII9GFiML+VTRe4TZn48xcpe583acVMBIBbrN03i+s95va4wuUxpConrG1+gOanIOCoXNGUJAF3hPLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3xBq+6R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3xBq+6R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F4AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771697693;
	bh=t+6m6dxgMhCECpvsWDo63ENS7f2FgrHEsTR1+3Del/Q=;
	h=To:Subject:From:Date:From;
	b=A3xBq+6RXgoqS9XosWe1+ZIN31j4rM2ZzcmqqEkAnbnVSSt9aqZcUygtWsKk9Qc7o
	 8r/zIx1rKMQAt9KOUtAA5WVBoG25JEG/s5ywD8Jk7pNvAnz2a7/hWxCQy9I/i0yasb
	 fg9PSHFkjGYjPqqALP/EEX8eYwtg76CyBiINxW/S5it8R4THU6wjrjKOjv1bBH0IP0
	 XiTlTTFG4Uqgw8Kjkk7LeSbxkm6YCkJ6Hd14/vYk4mXaQ4TBzcXkEEBWCG0zOBogQ5
	 +iQAFltVbow1e1ZZkNOhe3i3ryB/sfcUas7R+vXNLSOcp2J/o7BwjBPU1h2VY5s7NZ
	 ft2AFQutpMH8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4A6C61DE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177169769359.28145.5013623482497478023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 723882e21b61f052fd9eba8a35a74873b5b145091bee4b2019af963e1fd70f1a
Date: Sat, 21 Feb 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771697693
