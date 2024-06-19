Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6231084E04
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 10:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718791763; cv=none; b=IRpZEpzg8qHBASlVgWU2r2HKijIBTH+//eKU4PPVjFuBF0YLJVmn4iByjBMCYQL0LwRkl9GO8l4ZEDpnDkHUF9e4kv49InXURD7tmidMXXeVCz8+qj7NqbdZAk4YBpe6lh/GXIGvwHB9EgYZEH8BbitGYPlb+SNiXu7jUNZ4Doo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718791763; c=relaxed/simple;
	bh=zV7s8yXZ29h0ZvISXZ4JrZ6Y8nzrQgIdniGklgdgXOQ=;
	h=To:Subject:From:Message-Id:Date; b=tkTeQU1GqeVHX2w8B0ZXiEdjrfMo4wkVl8ydnQZ4+gMaq32cLsjh+1NE/w0SnXgJAjIbvOUHCbxYl0ff0qgXhaPfyWMPCl1Z1Jxy1B1f0m4I9CYp6QiL1s87V8OtPc8/Umgq3xoqpGE0O3h+mNTpxCvlxVosEskMIuKQPOOBb84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpMBq2ab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpMBq2ab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A19C32786
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 10:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718791762;
	bh=zV7s8yXZ29h0ZvISXZ4JrZ6Y8nzrQgIdniGklgdgXOQ=;
	h=To:Subject:From:Date:From;
	b=KpMBq2abBX4zsKbz5zArZeRKNaog1EVy+DTEFEfdu3pmY7XRIZlhGMPbSjOBZd0t0
	 /SZ74DGeTX7T2R7f6JfLTRlq8w0IrzEz3Wi97OuKZP2+kmHDNE06MZ/JKypAINiMyN
	 YYSJmTXYvOACIejlYNFehs4uzWXlYl9YEr/zmKegEVRnLFveiU+LoynPWnKZPdtbyn
	 W2bsfY1rMPPDQgPEajYlIFvC++ptmiy2KQDc52gDUrSrW8jquDuf8Ssvl0ZVFiT5wH
	 jPXz+fFI2CbaHp3x1rLJnjHUc7TWugJjvPTdoh0F3+NKU8+YHQcZOYP8J6A4OhvtX7
	 /mlEqSezsZApQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE72EC2BA15
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 10:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171879176277.6125.8596113744648514436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd257cbe34d4a67ef40f624cc06be9975343cc31254ce83e23541491e60bfc4
Date: Wed, 19 Jun 2024 10:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718791762
