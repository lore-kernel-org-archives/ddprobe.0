Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391BB25A2B4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742925594; cv=none; b=MFiRe+asmGILZzrlaXMGVWWf+niGHOpvSqjjsjsitn70+VY7OhDXOpbbjjvSJu/f5trafOUQRGx1Uvk6wdGhgOqt4A9hhoXSLV2Eeg9GSvGAhRKsq7pXmtBsEp+OBc7eO7nzEWG3bSHo4GJfv034T0lxv+5r0wZ+w+e3fQ/0rgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742925594; c=relaxed/simple;
	bh=s8Wp3ss7RL6WlHDXYnTKESulvaRARQnAHT0CDqv7GAU=;
	h=To:Subject:From:Message-Id:Date; b=ZeX/92li9K6SXJ7fhHBWFgINU/mpytPQ81CqI6ztXgAhK3KbLqIbt6Y+X82lDBqvwAlEdlS2ll/r+OWWD9h2X4cuwX5JPLH3tXYpUnK5CH6lLPb7PnSmnFb0zAHFbpq75uXWzXsK12CRk5uWYoodWckZoFgcwpqh+uLvkDX+/kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lol0kupb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lol0kupb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFEB1C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742925593;
	bh=s8Wp3ss7RL6WlHDXYnTKESulvaRARQnAHT0CDqv7GAU=;
	h=To:Subject:From:Date:From;
	b=Lol0kupb8Ed2kDPzGEQEBq8XAXpRJ2fS7SQDS0Jb1mi3fL0UPju5q3NxoMMaEolq8
	 5vTt+DYF950DHZk74FbtPd7s23bTrWooy7yAfIxHMzXJAnzbgpo/rhkYB/oXUPPkHl
	 OLkiYYtFFQPsJnalzby/6A843WMcljbYu6qqDD8wn5/4lBKS1IFGOZA0Npw7eJyFKh
	 9Eqq2NuMmfK9gUWEMKORzGzj4x/6DFgw4CyRB3I/6LHdfhXKPwcl+bOxqfXcIPw92A
	 KeH4zcuUlYTZWsv2TPQf3Jx9R4N1ahoZt2gTnvSaKHYvO6rprT/4X45yJf9Mlxp9B6
	 kbvK1080i0G4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD78DC36008
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174292559366.1316.2130830572131768408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0456d3047203e48eaea9e91459c068460022de56f98c74844076511103e84922
Date: Tue, 25 Mar 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742925593
