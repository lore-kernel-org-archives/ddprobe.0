Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5092A1FCFE4
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 22:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741128534; cv=none; b=Hmix+ESsdqoMwf1ifpnN1PQz80XjRzkc3PrQgPLgBKh4XJjSkvnV2plfygXP2DsDRdd4wI74wbq8g1G8QsYvRwD7jXuqGHOLp7ZyP966E0vgnce+puW2xM9rRpX08WIkOzWRFHnzhbk2JrrPYFj+MImN2dWgZKv3MHr2eJSXBCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741128534; c=relaxed/simple;
	bh=Y9SokLEEy98nhzX9cHBtEuytt6CWCbgZ0WL4e963wwE=;
	h=To:Subject:From:Message-Id:Date; b=foMQh+LDukrQpP/dHMOREdRABmi4NhmASXTFECNAqW05QBkXavdXe3dFoaJtmNzbVGyzUhu9mIUVusWJ9uJK93sfTHcppm5VTzzjN6CYXewguwtYp+3nTF2k1uL2N99KY+E2+80tkkWMcL/M0BkZTqDLoTEHycRGpzS74vuVKv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVFxoTHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVFxoTHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51A6C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 22:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741128533;
	bh=Y9SokLEEy98nhzX9cHBtEuytt6CWCbgZ0WL4e963wwE=;
	h=To:Subject:From:Date:From;
	b=tVFxoTHtxlN6iTypF2x9tVwAoZ97FoDHI/+V5KmReXfpJiALm4KCs/YpTxCx8NR6X
	 4YoBXgOJID3e4sZu5u3IWtYJTlqo26X6Vkjk4u/+bz89vn8IuXxQLYTxA1/uDSn73Q
	 rprh17V0AKQ6vzvHD3BnTBF3AE8HRvbJhbzmMpzqEiX3KtKtL5ei/ImCJgsqq5NPUo
	 zfrl7jKNP48WH6M6TjQe24YXp2epxseOGmJLQYjm7mA0lvCJPCiebh6Y68fxlCURGB
	 6Mmj6STCP8SPgDk3r+GiCp1OQhzqn3f/z8wD+WEFrilDi+tHcQsG9yqWlxChcschMG
	 7Jd9aoQmqa7mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96421C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 22:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174112853360.8935.7361457564384815315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe2392d153159de0547b9307719f68024afaf2e40101fb255048ae49f53f410a
Date: Tue, 04 Mar 2025 22:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741128533
