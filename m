Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6840CC2C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743035994; cv=none; b=E+CzJqhwbmbqcRpnCYbfCxbVRKk40D1fyjuj4YP6pcmN0QzxHJGs5vxkHxMuzxAjq6nL07zne+7K3Vwo37Bx5WphOi4a0HbQP4Fgxb8AkLkiV864cg7KktG3y/LowJOUJmSiwWNOOfhUKnTGxZ0semw4ptraGEdqAPKwuHruV5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743035994; c=relaxed/simple;
	bh=nfcuX5xcfVTGYu4urBsMXqWwKCtWm1X9R3kv9G9dZHY=;
	h=To:Subject:From:Message-Id:Date; b=nefRW9eIRibIeVLW9zFUimckN6RUGI0HQBT0dsJ8KOyuTeP+gS0pXW0aqT0SOX2y8zgO+AxI2Dy5mu+H4Ghzf7lETjitKjB3BbakAnVtLGyAEuLAx3ExrF1wbysoemQikktNPUc5UxoXnvxaSSa35HgRD7/3ZJRmYUpGkzn4/Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWr8sYNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWr8sYNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA07EC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743035993;
	bh=nfcuX5xcfVTGYu4urBsMXqWwKCtWm1X9R3kv9G9dZHY=;
	h=To:Subject:From:Date:From;
	b=bWr8sYNjExiTvI9eNNvRIVGxtcHYpT4QhItcTC8dl9qdDiqEEZjbKGOmMzEfmWADo
	 5UBGJ/V9D31uabRc3bDbK0I/HJk4hAt1lRqagA5xiR0QY6m7vDEcKnD22T9Q5LUb/J
	 U7f2nZ44Rs6mHztFCddbyG9lQW8zzupfrzRaFe0I0WTE4uO3p9Qruu/7C/J5P/n0Ev
	 6/2EKnBEPz+DoQX7BxSnDWdppMwGR9DAd1D8QP9Ppd6WjfBEm0Bpn4zcDaCcL3LsZD
	 6jVUZw5aYcWVal9bLNz4lzhTVAWqx/+lSKTo7sPg6STbkYZcFt3Mr56hSRkftr6fTF
	 /PkCbgsYdpYuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1338C36008
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174303599369.26255.3429627914653568826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a109e9893d88250f5227abcc42c2c093820aca1025b2bed22a87e850e2947cd
Date: Thu, 27 Mar 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743035993
