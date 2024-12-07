Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C7628F5
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733608554; cv=none; b=Cq4faInaj/sYZiBkN9YCu+nul7SRgNQDA9A1LdcnMERb/H2R0MKWMEadHEQkqqaIRDP8tAOSj0bR1Vs8oA/0ErsUzjkJ4lLFvNku3N/DTO+QCXI9syx+WMSz+cZEPVP4ADY2fEy0Oxh6ICf5dl7CFT0Ri2p7A+pE0xKYYyaU99g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733608554; c=relaxed/simple;
	bh=dRarquibMfOxq/ZOXvoWtP3AEqBJsA4QEr7s8sgOXRI=;
	h=To:Subject:From:Message-Id:Date; b=J2YnyB6WTJfIRs6L3J5zv8K4YidHJDybBwq50BjH/ZJexbuJoGx1wKQRrt/oZTai5ALcq9zNYwQyCEjCCaKW5alKTITsM9Af4hSgR3Afr4HSgwrgWjY3cdLjuQz85toRlzx6e39CTgBFkGyNrVqm3sm6Xalgv3PBu5G1f5bEqC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bn0B4o72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bn0B4o72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3DFC4CEDE
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733608553;
	bh=dRarquibMfOxq/ZOXvoWtP3AEqBJsA4QEr7s8sgOXRI=;
	h=To:Subject:From:Date:From;
	b=Bn0B4o72u+u0/DTbOS2Pin9JnsH7X4+oUhriAQz7yWlYM8hoNe96p0UCQb2X0+V11
	 l6bA72xmepejwTMxTfGGJwh8TNVmKokXPFBMiCYZUNgALUbvnliYAA3eNsiXxTJbKE
	 VRSoS5uoUx1yX2Afq+vgf9mQ9RSFAHVgZzSDaZxhUPy3XDlP8lNJQgctoEkj4of902
	 IrZ+bSbgulFSlh/KAyhovkiiWyZwtpoEGk6NvZ4dDxVKWy+EfUwIUeR5i/bLrpNu9b
	 qdZ0fU6wNzt8PoNcQ4IypBrg/TeSUsbuzPRtEWqAq8j9YDunODlKS7qY7ixnJatEZo
	 CQIXGCdoTwd9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969E6E7717D
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173360855360.23155.9624112474680414187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9604084d53c29876e06e14475154fa38f0ef0b556c3d81348017358db170b59c
Date: Sat, 07 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733608553
