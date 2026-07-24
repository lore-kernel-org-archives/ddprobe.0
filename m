Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CB2440A2D
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784908834; cv=none; b=P9TWkba6WRGhN+kOCWB4NQhm+wM9XroUG/f5pM8MUUBOSiWAYB4H2vpKHmmeL+4lZGysOHokqhts/+IKj0SNfG3cWQWVW3l60AVWG9SW9F1+K8aR/5cP5IBUIwOQ9eVMi1fjeYe0NqYaJRoHEJeZrMAhtDHdxQgpGFR4s/LpJP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784908834; c=relaxed/simple;
	bh=LbPs7Cnxbk9G6AOfbSQqD6im15lKTLYzjSYXTkKzuTQ=;
	h=To:Subject:From:Message-Id:Date; b=q9SSwOeAx8Zz+QVmSYtQ/QPbUQEzMDoKN+EMdaw2roJeKE//QIHlaPkYCNABzOcIeh1VT0krRZyAWblyQoczeiyWgkjYRBBe0J4Yk+k6bZyrLgbXiYtzMW47YuNaEVVVTS3MG9EMGKjZSRrf5u70shusDFnDDzZNIrnTE9qy564=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWqFy5lX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWqFy5lX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC137C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784908833;
	bh=LbPs7Cnxbk9G6AOfbSQqD6im15lKTLYzjSYXTkKzuTQ=;
	h=To:Subject:From:Date:From;
	b=hWqFy5lXiXzgFJNd31jSMQ/c6AybqaKWtHQw4eoM2SZtL5+dTn7+0dB4iQyPJHKOg
	 ryOD8GL1I4rgV03tkkWZO2l4m55Kc5r+hX1vtz5Hdvj7TFoQF+aeDTENH+sApCOHXP
	 7FUTPuTdhlZF9Mdy/3LWMHbM39TOxv1CsLKS03WFOPYsIXlYB+fgEzLTdoQ3QSn+sy
	 ZcR+ClAdwIzICY9PWFYtS7V68u0mdY9VAnBRCT5yhjLlcYO5auENIyMXrJ3XD64wWC
	 H30Wy6/Uflqjy5IfmJsmQDiQ7lbYmdoxpOSXRXQOvMa6reas2WABkyjywlhNM91oFm
	 +mZOdbwQYpiZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E17C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178490883368.31869.15642427667878570051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee11c30cfabf766c7032b3b67bc38160543fad67bda11465db129352efd38195
Date: Fri, 24 Jul 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784908833
