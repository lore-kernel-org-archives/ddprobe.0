Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B87F208A7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 20:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720212923; cv=none; b=lMLN+CtgRbuNQ1hOo7Vn1eJKTLImLJDggNiY7LoIqEktEisvh0CyiJuKhRQnUz/BNtjb6lEPVWvG6orqaqwiBtPJRwvVW/UkhYrTE7awWq92dGLUCA5uFYAQs1wWYl/ETiwJu1Bf66MrvapTqtzkAIkCN62xxkBL6LQweDzN7G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720212923; c=relaxed/simple;
	bh=YYrcRUIB91Dl3oMg6OLkwLeVQQAPsVJxtaT8XcgmVsY=;
	h=To:Subject:From:Message-Id:Date; b=NVMvJFv2XAoMN7SefZcWlFSEdXKSCGUFOd7Aol9V6kERT2aM6k9RXgp+i5ifLny/bpn2GrGd1pEP5veEtDPdm31F0b/0agQRMhCIl0CLBUoWJkhNciJkTZJaJXj+lJxbJUWv+zm6H6GeanXHxRTD5qaDVUuBtaVYb+AKQnIHYys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnFhULfa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnFhULfa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DAEC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 20:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720212922;
	bh=YYrcRUIB91Dl3oMg6OLkwLeVQQAPsVJxtaT8XcgmVsY=;
	h=To:Subject:From:Date:From;
	b=hnFhULfa3b6SkRcsbtuRmIkZ/VN9PJ4nuNe6QRRE3ci9m7Q1KDArBXtSuOjC3RYfS
	 v/KsmQNJDo/zMkReJApn52oTtPojFRj5XMTaqizrLavpoxoJo+n+9a6yoSWQfmcr66
	 nieIAXalHiEXRvQ17kjJ9dI2WTudAJU4tuu+GnfEzYjp6Y4HIX+eDBp6Og4dORSDsl
	 JnjvZ+Wva+sbiK+MXIoZyCJxZMjqIbK206hnBvbwokcLyfObR4/lh4aMZPvacBfltz
	 kqzAtLHCBLDt3Ouz9lpXIoxR/3wpnzzPI6FaEYzwRD0RvDb2h5PltUpHhiX1qtv3wk
	 t2pff9Bc6qqUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F23C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 20:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172021292277.5953.6593505994225691522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d76ebb4bda495ddfd09448fde1c993652349aacfb227e90734ff5702b79180b4
Date: Fri, 05 Jul 2024 20:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720212922
