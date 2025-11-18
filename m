Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CC9730E84F
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 02:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763432514; cv=none; b=Niw/nLYbd34n4U61sXttkm7j/X/G5yupjjFG8vmdbe/XOZL7B2C0rw1UD/2WtKfLz9j/LdgAL9k3roEkM+eH3Io9eL0t6PyXhJwcy94zf2SRF3tlDycUIMB6N7HvsT8ly5Clo9EaWT9OBbXjW0cBn2Ty2yJmk8xp/VgEMXwidQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763432514; c=relaxed/simple;
	bh=Fu+C86vlp01XlJXszPN/Dblq4nvV6AbG+k15i1Q+/nE=;
	h=To:Subject:From:Message-Id:Date; b=hASL+F2nUZQje3E548R+s07pluRecyj/olxRkHgOKYBpPq2Gm2DRFtQ+K1/UHFI8Vig2mIpkv/Z0j4/t/PVaNLSUwFQtjCOXOSB24utOS0ZFSPi7l13fvZ7Lh8nqcJ4DXbomCHlmZM2IIHnacZo4c4aQLJKC4Iw+P17HNeihRMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rz1LI51y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rz1LI51y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC869C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 02:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763432513;
	bh=Fu+C86vlp01XlJXszPN/Dblq4nvV6AbG+k15i1Q+/nE=;
	h=To:Subject:From:Date:From;
	b=rz1LI51ynYJzspMQSoPf6GwncpTIEgR4pxN1uCWhWnO5hQwpJtzlLrK+dLjwu/FDq
	 PkY7IlRqxrwyRcKSEsTgyPBVkG0s1mZtZGsAiLE1vz3U58kurnsXkg29lxKAoKqOx2
	 1dwNUUTvcOUzRhVf3NyaE8lvfJTuM1zPzFJl8ls1OqFVvQ/EozqnKhUbe1ziAOm7bX
	 IErmhuWMRpT8bJXhFcSs8fVJd/XX1+Mzut1LlOPd5rNXrJC1705onTrvjBs27Z5ARI
	 xn2qEjJ7AQq98Go6Ci/kg2+a8NB4Yj4ZDYDm0H1Nx9hlhbP3I/Wh7VgjRxPrE7N8Ih
	 kAy1nZ5bN14xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929A4CEBF61
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 02:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176343251359.27235.9103122393155872920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ab9bb4807526d8d4c2366da2f0b7f5eb9a795abfdbfc174d743ea90befcc00
Date: Tue, 18 Nov 2025 02:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763432513
