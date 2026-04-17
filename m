Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1973D3D544
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776430054; cv=none; b=dJ66PLTw9i3j7fcrxXiLFZzOsgHRzwq+dSR/Vma6AsBUSHgoRKWA7zfXjDA660gn179u9QYAN/sEiY7O/jNtvnuuW6PqrdZl4SDoNXZ0MUmTWcW/pnMoEHjYtJlNM4nlO7GkhReKeGksAZoKjYIlKhytHDZmfU9TSv1dq0wlzcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776430054; c=relaxed/simple;
	bh=XjlqhR5Zmf5lsYqMCetXnA7iEULo/MWNDo5zIZG7lV4=;
	h=To:Subject:From:Message-Id:Date; b=EVqaNE5jGHMFK+VfaGGqSrBaLEGIl8kgkc+LuTJvfOHPyO3ta6LKOJYfyB/WMxP4LPTP84ZDwPnsvBE2jPCdjKPE7e+Zc71wSDpifMIK5crTylL8h8nC68uZOLVudiC5yhl0wXezxwy6jWbBVouw8D18NiZLIE+acJug7Gvduoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3EW+ZnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3EW+ZnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86B6C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776430053;
	bh=XjlqhR5Zmf5lsYqMCetXnA7iEULo/MWNDo5zIZG7lV4=;
	h=To:Subject:From:Date:From;
	b=K3EW+ZnZbgkOd4HeUo4ZMvNGYKK62BJH+dXscE5acvm2LuuFLE8yVS2S090uttKuA
	 RQG1TErXZVUFnlkAsJzoZI77KfgBf+Cc6jrCtlUu65RhhzNgAboaBWvWG34m/XBYQH
	 XTSGlj7l3/7qYVfgHeSEMKZLGlRTfD0rS179i/FJ0lseB1HmG79h4yyqoAJx8rDiWt
	 YSG++TSddp0mPyNoS6aQYAgu04pTWxwQN9L5XfYey32+2iGhELSAw/xg4Q4o1V4VGe
	 SGI0kDpqPD6pCCMSLwMlmgk+Qu+P41XQNKVsBnBcrWJtoSh+3nKljGlCCT8exEXK8d
	 n4CKNM8qLIYag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4CAF43699
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177643005368.18570.17052057504213072252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b653c06febd57f7bbd49fa75fd81f7ce878853cf702ef6b5bd8c5dfdc511fa
Date: Fri, 17 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776430053
