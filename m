Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3941D2C11C6
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 21:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782767914; cv=none; b=k9rrERp6DJs9rPowWCixE1Er0YlEI/TzZNQ44h7Vuz6sfg4nCtqyXNnSU1dKhBmY4aqPy2iaQNtG4mYcp9K4tcRpW8Qr4Kd/C9IW3h/z73Jqn6lHkwySx1ZWYSjSU5+hjS8+1eBdvbnoUWTh8z53wR4KvHzFzMDgVkxbx7m5eKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782767914; c=relaxed/simple;
	bh=mzLy2EDXQr9Ng6TvESUpS5kZsftxsvM73xT1kFLUUBo=;
	h=To:Subject:From:Message-Id:Date; b=VUW+E4UA164nTL1l+yJvflRZ8ifCSIk9ITs2uy+90flohHIMKadZ6HH9nQxa1E7qtwRO5i304IXBUEMftm5MMvvmAhp+6IHNg91Mnf5crhM0h5U4wwIhM7cJHqw6Ljo731I7PdS8C2ngwAl7hEo2G9C8WmLuGzGmV8dt8vlLXis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hk7hJw+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hk7hJw+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C416DC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782767913;
	bh=mzLy2EDXQr9Ng6TvESUpS5kZsftxsvM73xT1kFLUUBo=;
	h=To:Subject:From:Date:From;
	b=hk7hJw+neYB+D2Li6G+zZEnYhMVdbNUui6Kf9+EIq5pcD+P4FmDYqF8wybXmFa3PN
	 Nf5NXd3HOQD3mDoNuy/gHhGvvmMDNEBAzYxC576KGAguWTQSnHmnIfKYhty+MgHnZ1
	 V95BzK/q+WWPxRKT4z2sp4tNST5v/NuzZE9V8KoJb6gEM1Xutgbmlid/zHukAcR8E9
	 WzYciuzr56gCXrjSFQrtpIE3iQ/wq6kOhD2AocwxJ2GVyk0tQs2KEyVMfTvJXxRlPY
	 Tf5DXQXFYo3TMFrya02lJP/jiYSGTNtv2bNAay/2FAVMP/EE2OhEIuKJPrqsFqGbnM
	 +bYM+gFFYnBLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AB1C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178276791368.1238.3004001568386256642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5010476f002379c74519752b2ce4f24bb65df26747e7bb78f08c366b3ed7d798
Date: Mon, 29 Jun 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782767913
