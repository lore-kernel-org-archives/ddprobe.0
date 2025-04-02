Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2894A1F03CE
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743627594; cv=none; b=m1u0ZxAP7FVRaBbZn6xGh6liO07mQqgQ6Fj2T6fFlp3+x3SBux/j6JxMH47TdJLiDIER1p2DhKAXgYZsJ1iT/7KuNK76fMHUHjBQw5ub0UaApwLnhCCFE4+IvjNBq99vdoWzoNVWmnMjlKrCbrHr4qMNoR2F9WSq7smKRvF5+Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743627594; c=relaxed/simple;
	bh=nHrIdlLrHvZQdXhk1c2uFwd4M5mFYTIh5egVeCA18sI=;
	h=To:Subject:From:Message-Id:Date; b=cPsME1RFONVk2WuystPWPGwzeMbqFLpfgw7JLazq0g0s9DIQwQV4JB0cAqu2vxUEcjvQBnisLhNqKZ0knsUIyHCWe16ADPw2XUmlpVAXLikoN3gHIv7pF0VjPhCGYNVq6PPTb4MOd8/mokEglpwIbMuph51EX0VQy8w+NpCOQ6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnqE+Vxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnqE+Vxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B5FC4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743627593;
	bh=nHrIdlLrHvZQdXhk1c2uFwd4M5mFYTIh5egVeCA18sI=;
	h=To:Subject:From:Date:From;
	b=nnqE+Vxm1Nf+ofmKrL4vLSul5Ba/zTLPNCOWyhxt63Pabwhhn4E8cOVo9S+S/pVer
	 RBO/YPdEg6OclbJXgtJcZZ0Qzu/YsoI//iPIXXIweLVHrOe9fydI/MJh/M3+pkPIKj
	 oci4XrNUc6znpte4ujBaDJMZSb/SsL40bmFOylFnsw9FvAXN5Nn0pyVEzKNOiftUI0
	 sSeIgTHLbtbfOuVTHnWxghL6P+SFw/4NkZz9zBPetQtrafNmRGQxiJ552MBDWr/iCN
	 wwwFsxSwMHkgdseCID6zLKm7Z/LAuUYf4veVuYjw2ZTv30UCEMIYdgXQIcHTxmfuXr
	 S4U0fk/P1bCGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C62C3601B
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174362759359.3087.11703645492259757245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e585fad44cf5f89dcb8a4497cea4f880f759fa31e40244e7219bded6b5e556fa
Date: Wed, 02 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743627593
