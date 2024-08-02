Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8EFD1ABEB5
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722641754; cv=none; b=uB7i6nCd7eJ6DMbMgrsNy7OgVNTTz2csX4VdPJ8ksD79Mi4l2msb407fRzHw0tFMntNP/u1jywzhglv/PaMHu5gO2okA3zZkAtshNXSnuq8YTuwJaGLjojt+wXvIFgYRmpVqUImUaszy7bxhExqzD5uE/YJNvoRtqzarDx6g4Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722641754; c=relaxed/simple;
	bh=tkqZrLnsIbSTbt1RezYfIzm3gH4mQuqNt3waHJguD4c=;
	h=To:Subject:From:Message-Id:Date; b=hGehjS+n/R7NMmslwtyvwG3Pt+U7Zn3lPDvpBZIR9NO1nIcFpspHz6V4zyqvIIfGYry1eGFduOJwN2pL93422Cw6rg/umDdJNiRy3FsT9yMsp4Zp+18rYL1y2jc+Wul2P8rR+nrSqnNx7SmItKJhQ+g4Aht+cV8ob1/6WDH+xFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfByiTXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfByiTXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF1C5C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722641753;
	bh=tkqZrLnsIbSTbt1RezYfIzm3gH4mQuqNt3waHJguD4c=;
	h=To:Subject:From:Date:From;
	b=nfByiTXYYukQi3sq2MdVkm7nC3Y2NTOc0lAQV+BS1YEIOCW+F99AQLN+b4s7Em3th
	 fAIqjcr5Fy2nD6C1Of3JLPB7eEyto9BXgz4HLgCvxcY4PHXCziJEQKKK6UH5xhpn0V
	 FIkkqWkb28aGwRfk3tMn5hMtfWfSjukEkWAdlWhGodPaDHlYNZAfv8muh7FsxVXhOZ
	 Kh83xS//ZODJ5FcpeZUiXZrV0z6PEnkffNcO8WwPKP+r/NQNr5xEzflr8W8/YG7Q6o
	 nlnGiaS599+c9z1d0hqaD4d+Ika/ttR6Aq3T4z39xpezaab3+HFO+Ue7Qq0gg8Cbx4
	 OxeXDQZ00/awA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DE3C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172264175364.14953.11977193995663130182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dbd844194522824a687089ad199f2d6ba9e0e19b2a187abedc064f82ddd5067
Date: Fri, 02 Aug 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722641753
