Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BBC35F19B
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776438454; cv=none; b=cCuO2INnEfjWXLzgJFA+J+4dKQOGzfXUPGIVx0E3czRJ7CAUhijMhTsgpOJ4EGelJ7igtdc8SXssmgStFaotMfeb1nap+bXIK/GM682GTSD5PBFCABowgEWyjpqa6FWhFjZu95aRT/VMA/rB5Yq3s6EkZOKL82YU7AswOwPZ8rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776438454; c=relaxed/simple;
	bh=heDHkZsyy7oNjtdRBo/pbbNn3N/yHbnNvdW789+gl70=;
	h=To:Subject:From:Message-Id:Date; b=UytG+biLU11Zk/P2weynidIwWZu9u7KVRGdMsWsg+3rglQ+wY/5ZVjsU6Dv4ujIJ99r9M3Jp+bBhlo2W3FdsFFYqcJnRhjxfIYM/FEzDuR2c8CibAeq3poVNMiTUxjMPQW2zwlURYHgZfO0xbFc3XvCEHoWNIrYdDxuM5bXx+Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iK0cZPHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iK0cZPHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BFBC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776438453;
	bh=heDHkZsyy7oNjtdRBo/pbbNn3N/yHbnNvdW789+gl70=;
	h=To:Subject:From:Date:From;
	b=iK0cZPHuhufyLMJ/xcewiBQlES5sD2w7DEz/sBDCFjBSgSbkSe38xksQ9PCTxJ5PS
	 JCfhNTcFcvRgsOJLOPBSPCGLhD9J+iC5VLiK4W7Fkl3jddGFfcbG3VNBJzKh8Zrk8r
	 f3M+Yubwkc7OIB2nnI2El0MMrwmgXEmfdmOOLNIWmXmHDXzDjfAT2BWX4SSiJyDvNe
	 lMabJT9JhMXoGMcQIPbfW6TgJaRaeapMJCSyahZCZ0oZifz1qrrUy0qR9HRcQkME7G
	 yDPNA6Exk6pG4SFX3T2EUIPDIiu8vzZMPAYzHcZk9A7sUQBrtiHQXQU9urvMg3PWHI
	 HapDQfIPlHbig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A6CF436B2
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177643845368.519.5115645730454036937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed96923789fbeabe345a6342ed06de4623229cd1de4eef20d36c5eb7f220f01
Date: Fri, 17 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776438453
