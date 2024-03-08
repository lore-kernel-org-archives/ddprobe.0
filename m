Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B8D568A
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709917097; cv=none; b=T8M8t+iBpF0a93gWZdyec7nrM2lfof0bCkDNG6HffnJ+jrdrTjNiOEwEk6l3tDdLTMLoenU+rNTYxJkzm1xoF74hzlSzbpFoQN+hJpBYde6kZXzq7S1J4TmJsvyMfhxKj+Kq10tLg7q7kQCQEXUT9Nh404gcV5IGtXJCGXCj8Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709917097; c=relaxed/simple;
	bh=Vmi7G72oSpkHSOzcjfP/1vvyK2AqYWgPfneBP/7nNis=;
	h=To:Subject:From:Message-Id:Date; b=eWv6ekx6IBAxd0ef+q09ziW9MAB9MAgb4m8HHp6PimKDF86AjTf2fHHVGt9JLT4XeYNgs8XvROMJuxLIPyWGZas1l1HragsFepu5ZMiNlZlGhlaafPUrYO044JyC1gYPi+8Ilu6AUJZOheyDFrSuxBpLUb/l2aGlmbXabpbhj48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hM7+k1JF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hM7+k1JF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87CD9C433F1
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709917096;
	bh=Vmi7G72oSpkHSOzcjfP/1vvyK2AqYWgPfneBP/7nNis=;
	h=To:Subject:From:Date:From;
	b=hM7+k1JFrQRjhJA52n68NYw57UP32MgiI59KSRn6XMAOAe3JkU+TFXBPUY5rPav9x
	 QP16Zm2I9QuPeoxdNIWM/gmfXiU6eIKWVNhMjHHPdzWCv/ytwzhePa0KK5GfzgsgpM
	 iLTe5H85cbVnQZaFN+Nvzf8w9XJF6q3jNxjDK1b75h/qX0Sa6GySqgl6twBJcmz6ic
	 2bkblisGLOy7qQsftN7NpyfCihn8ekhjNa6+09bf/jlGaZ8ne1bUPcDr3UgsNXKWIw
	 t1H8YZ+mFTfUSh33hoC5nPumQAAzUcUZJHBsP0fLI4A7HO/22Jfg8E60p5bJ5M8K/7
	 nadueg5IIHMOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CFA4C54E4A
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170991709641.17517.12679702564631301957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dee3f3c8ffd28aa059ba5c1db119559d86a9b2449cf7b2778388c6395a1fc6f8
Date: Fri, 08 Mar 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709917096
