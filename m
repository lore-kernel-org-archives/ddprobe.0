Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324181D63F5
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746902394; cv=none; b=FYxr5ZDeUEfSdkAO2SbH42SKhBdS+ee5ckhwCXMtCcI8SOASMt5+zhb2UuQnmEsARcMIKDuMmeo7L+l2rjoFAdbXbYdNeCuGedC08NzQwFSSvFyCl8T/gX3SvfMaoiRDVybwPqqS5lfffpfAWjZkMtkXGx1ZMiayCLVZRHt/rHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746902394; c=relaxed/simple;
	bh=tZPFZK9G0e+4wRIvfRI3E7Y1N48kl6dok9Bs/Xd+mUI=;
	h=To:Subject:From:Message-Id:Date; b=GVYmhcxWslhpFVVrBiYbhSJOL3CaSj1CqT6Q+uWpBOjI3tw5GOLfw3lgy9FwfX03vrMW0N8qTRmJ8z5mSEdR2qkhj8AF/ib48Me2ilaS7hDjkolEqhTJXHwTmQapJWoV9q/9zacnPbQUj0WSX+pyooMotvB06DmqxDNAgJ2/pgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhD78JXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhD78JXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A78C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746902393;
	bh=tZPFZK9G0e+4wRIvfRI3E7Y1N48kl6dok9Bs/Xd+mUI=;
	h=To:Subject:From:Date:From;
	b=mhD78JXuYEFuj0iiqYdeSOS2hUe/dqIIkelnbOaE+ay+l4EFidEU7i/Ugd9b2wHeL
	 DLBkStTNLHF0azTSCASgTDRLeuj3FDFiTOLFlfV4ouDlnGiUO3W3jJCTqd7cuTZu0F
	 gFNKDnksgfwZ2pHKjQ8AMDHYjc68BykVNkN3M30rPzRLv/Nc8ks1N8CJ/XMqWViTnh
	 nQEhGrY5lqcIoNpBVIi44I5neQPkAD8wGk8VF/3dL1LY1egVfAYexZDHgCgRI/u6lW
	 NHE2IHGwo0hDh/K4MxWBx4d2Th4sqjlb0jjEgE+jYFzX8y3amGffH6L4pBTLOn34JQ
	 A5NOfFM6B4U8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2BCC3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174690239357.10152.3828547284696066846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 437cdc0fdcc6eb90febe095343f3e7706c5d70d251fac4dc485e4c7a1a025b3d
Date: Sat, 10 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746902393
