Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28ACB23D7D4
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771128894; cv=none; b=togMdIPjxydkTM/FufBlUvZsAktQ4f8iL154AxGambpDHG3LLDKI8rR9Urmg5pTVA6V94KMXD4B63h+btwVz6D0V64F++GOr0eshnjU1fxnxH1jMg05cgQv/skvHfoWW7RczfFZCqEBdXvI4uoQVqgYpeQiZVxmJs3m2nbciGAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771128894; c=relaxed/simple;
	bh=L7VPGF5zM1kM1h9ZbEVTlMRBRiHlqaMhQ3/EtcLuDyI=;
	h=To:Subject:From:Message-Id:Date; b=rslKIlbYpwmXZW7jmE4FKArPmW8UgmF2TPMCP43MRAKvLvpYcZ7+2CVgD+hT4mBKxknUakIFq4QAStbHnE18lng56QhBOc/HoKEsWceVpjDgK1VseBGqThC4zI6qfzJpdwx5T5cE8F5HTLsraS8Ns2gkTQ7aR/h9CGTdZtC0K6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gW4o3EtY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gW4o3EtY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF14C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771128893;
	bh=L7VPGF5zM1kM1h9ZbEVTlMRBRiHlqaMhQ3/EtcLuDyI=;
	h=To:Subject:From:Date:From;
	b=gW4o3EtYgYytSZhVuvbU+uBNrsBPgfJ6ymingz2CwDOahxj8wrsardFafAJM4wVD+
	 x9iMcMRd4ZnZlM3ov6aeYYSpwecH880Cs986nPJ45JKREnMoQeh3DSk6ct5QWCgGLa
	 seIAjFPUIfHGcBDRMiILnLzKAYH36dGWPjzR/+qZi75Dy/lbHFNLmOFwZTM1J5EwwI
	 ET5k/7Okbd/eA6is5snW/I4/T4PoShpZi+74ZQ/csmVgmdCMUwMmTs7zMvd0AuSMvA
	 RQwYZ1ZVqY1VN0MAVs+kx81zVqOny2TEUh1s9WJYhRL1KPzjX8D6RBrifmDMyuxK1j
	 KXZEQZseBKR8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A13D2EF585B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177112889361.18049.12073060039531620399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1defbfe02f4acd6f381b000aad53552ca5992ae22b5778eb634e216d420b9de
Date: Sun, 15 Feb 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771128893
