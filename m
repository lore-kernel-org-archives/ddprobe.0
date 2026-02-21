Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C9523BCE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771713893; cv=none; b=f9ILJSOBarmC0IW62wxo+QjwY8GrmHxo1Tu3zz5wYP+D2d1Ls4ej6/Q1ytw6EPerC791EadOT8heUXKRDEZYHPh1/B2GiNzmxj4u3M+/mnmYGT/VnQN9Pi57LRLm3kUldRNPGdMn1PK4OFHN7Sb5uQmeLfiILz3mHj0ck9KcWPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771713893; c=relaxed/simple;
	bh=AhFdVpAsinqh+2MZzoyk2k/uGQPoIZe8jHWsoBwnFdg=;
	h=To:Subject:From:Message-Id:Date; b=uHRs5OnBsxoVMTHxSEoXZxG9iZNCfSYJNxtimQhSFcN5zU/1qqAtm6LgqImoT8BtYbrdQatqhYPUzUWHjEcwJ9aZEMe0FIx13ksjHnYSY+TGTjrwfSH6sZ+vDgAi3hyadj7wuWgDJMmhb9XEszlUOBJ26fCKpQ36Hq/LkYgaSTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxV6zpPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxV6zpPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC38C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771713893;
	bh=AhFdVpAsinqh+2MZzoyk2k/uGQPoIZe8jHWsoBwnFdg=;
	h=To:Subject:From:Date:From;
	b=OxV6zpPEJcrbHvVBj/lvLOB5t3W2pXmCpqhEbPXEiKhLeBvBrXJuJjwfkMkB4iKCu
	 3jDoDsLvp2KrBk/OeLm0Ss56p9mu8EunZzSNNgiTHIEKuyv8nDQE+Td3p/b9PTYlWD
	 gihsTf+q/7EspOb1uzyC9yWRlimc1ShBLf1/cG53LrUvvLLXm4IMHsijIVlpBZUTSA
	 D3OxzSceme9daQsdCJNE1VshWn5k5Fsgq8BFUMf8Q8/IauoRnSrUEAzfrWD4S6PW/m
	 uft/DF9EKqOeMoVR/XLiGAhAxpSP7YSFnuVx/lExkxilrgMoHSqxswzrbBd3H75Mf8
	 kI6TtgGA6Stdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97ACDC624A4
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177171389359.8059.14981008869365979404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13381a44fa3f7f828a09ea6cd86fd1399f4fdfd579ce11f431eefa32018d43f
Date: Sat, 21 Feb 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771713893
