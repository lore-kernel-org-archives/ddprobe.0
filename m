Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368E12165E9
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750253995; cv=none; b=Nrz5w9SepIt5ag+bKOwV6AGMsb1KTaIZRzTJZZbiuh/RHLNxysis3jB/KUuBD3WFL5voZri4e2oQxIv6ftNKr6ZBtR9RDDDZFnOy7/ITNhkH49ym+CkOcqZ9H7b82i2K4+RoJHX1aqt9k0Q89bamqOQYUG+iajfjzYPCTcp8wHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750253995; c=relaxed/simple;
	bh=yv0NBmDzYRbxj9m6dARlSO3rw11SVFsRycBrhbQrO2g=;
	h=To:Subject:From:Message-Id:Date; b=jQn5N3ePxC8N101NLG5CrVJFu/KdXgxPOekrIFzLI8OSOFcYxJ8fFitgZIdWRnTVvnisqZD76nH57K295O+RDIYFoCdorm/qOQAwXfM9E83iv3BhZMQk2V5gDZkOLElZZ70mDHuuMI1R74WPzMqoXcCM5gfPKS2mgZUJuNVRCjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4XfGLmk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4XfGLmk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEE5C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750253993;
	bh=yv0NBmDzYRbxj9m6dARlSO3rw11SVFsRycBrhbQrO2g=;
	h=To:Subject:From:Date:From;
	b=M4XfGLmkKxAC0rsGe+TsHyF0mYqPfxWCNpuUeINk/Te77qYW8o3hG7K5cPKR7WkGf
	 ZEsF/VaxBm46HuiRSFTm0zDWZDn7dzZyjVJD9XfE9lICzhp2noZZmCwvW2LShuVW5t
	 evCkvsHFPO3AJwQ2x+SZmdDwdW8ZeG11oNiFji4qC3wQqlIG13L6dcHbE2dfKhsQjF
	 diIvXGDWasvV8DTjATAXufDx6iM3NzlMGjdpuEQJ3HmPSikaeVyx98aqbqp6qjuJGv
	 YC/OM5lbErQq4xl7Qyv14ZRIQb+OQMr7KsVO5yTShes/MMGEsrabfLYMI5jmFU/3Ff
	 AaLVJ1394WCwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE35C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175025399357.6047.12346190638531548372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ba8086e8c9c9cec36012b81680116be3523bb7f6341394860b17030feec30f
Date: Wed, 18 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750253993
