Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75284438F
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710631697; cv=none; b=qV6ZZmo3G05gRHFKqTDe0MxCnVnkGT/HpZrzp+dQQsgtpzGLs72djqnYAgLsH1CX36qcKoV8P874BfOuftutLSZbJyGJ0qRBer9OtWKRFOcHQ2TrkJfSol/WrxlFlyd7z7KJVxYGtQwlM9SeaWFb+DYSbuOQn4xjBgJcrdJLjjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710631697; c=relaxed/simple;
	bh=5OKhu61Vk8erqWD8bPK1xypEg3i+HgG59kpbuNPlEho=;
	h=To:Subject:From:Message-Id:Date; b=WSmbutbttZXmvB6VCCZKbWVCUsu01Wq5Uuqb3vJjROx9JhSXdsiutMVLQvKy9YC8B0gKwAT1v7vrPmAwUQmZa/pYwdJlAQFXs7wHhRh3FnVJ8BjvbdIe4EHG9/7CHvoBxPNMD3sYgIUfJZCqdzwt3L4l3sacQjd+lJYxg5WE9rA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGwZ+fik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGwZ+fik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A2AEC433F1
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710631696;
	bh=5OKhu61Vk8erqWD8bPK1xypEg3i+HgG59kpbuNPlEho=;
	h=To:Subject:From:Date:From;
	b=GGwZ+fikLw9YLiUet0YkvPlG7ruC21WDKmsK6LdwNKVkXJN6ftlTcCqINYKWrBNu5
	 d9PwKVxsI69sAa2zr+cD2PigDnN8u1/KxMhta4G4QF5s6hbels86dQKQgvJO2oEjWM
	 b1z165m4ylrIJJQ4xmiw+W0MiYN3XW03qeTQguSped5Vayy/ZR6gw9RPaxXnJUDoZG
	 nRvqOpoS0A1DW/q0QcLyEpzXKd4vutOBD2ofRLIo4hqi7RDrSPqJwkOJfGPUFH/Uv4
	 /T+WM7+z/VlsC5fQ4mBBgjrERMLKBZRp7xE80zX/DgMwghxa57H910ycS0P2foAmjw
	 XqnRtgAO/7Tpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 657ECC54E60
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171063169638.5355.6515619704116695028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d9fd877b33800f076cdbbd2b953288c7332b50febb492392bc27600358cbb7
Date: Sat, 16 Mar 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710631696
