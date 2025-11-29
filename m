Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C59933987
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764459174; cv=none; b=scIix4WoSNUMM7Vj8pSKf/M+cCOaGPnV5JkrPzBTnTJykCI4cKNZWO2cTEz9hxt1+75nq5iwDJXiCLp8IbYXf0eX0Dk+eLLYVkk7Z+Tmasej9HUS+Cd6STEDUx7WLZkEJ1T/9BGzb3aTz/430JaVnc10QI3lDx9w5aHXb8Smlfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764459174; c=relaxed/simple;
	bh=OQNTZLno5wxfr+4DF3RFdtK21h+Dx4pNqUNennC0CMs=;
	h=To:Subject:From:Message-Id:Date; b=PYOPIF34gJoPjxGqaIiuXNftb/GuqWxIzpQG8K3f8d2TQVrPwbfJz09AZHLoSgeiZLCThVAoc4Ik5aZihbdLBOTM9mJ4HZgTYPl3J4GJ0jffgsRzs+/YXvSdN0A8ZS7axB718oWnU4L0OxVOvUu1MfG2NvChWHjMA9xEfzf2KSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZ16/7bx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZ16/7bx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A709AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764459173;
	bh=OQNTZLno5wxfr+4DF3RFdtK21h+Dx4pNqUNennC0CMs=;
	h=To:Subject:From:Date:From;
	b=KZ16/7bx/X8vpFJnAPwxx52/iXIGoIRGVkvjIVGYt9kykH9YgkghfNEhBTK2cU2aF
	 WP6RwvviwuOogVDIWaouQ1paP6QHvQA0yygTYgGrNNAboT5pf2tHlw6f1Sxyno5scN
	 zX1yMzrK6MxPAbmeZ9IY3WT3VT7itSqbk5JNd9g0OEdQdGZLscnGYbmmZmQmEgOtLZ
	 yJXRj54jGatrLbMwOhyWoXo3gnbHc3Hgzley6ts8s/+hiP3tLzQhAV0vM57u/DHnhQ
	 ovLJ89MsZxo8gWAuL1Gq6hqxtE9MAuNbjqs3fGOTROilYEYNVfsZ4TqHYv6i77gQY3
	 fbk9QPbyNB2zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CF1D116E2
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176445917358.14131.8725189482948468788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5a4d9dcea3d129cceec00edd6d190aab434a71f33795abd0cdbde28e72250e
Date: Sat, 29 Nov 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764459173
