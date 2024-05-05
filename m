Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70BE617CD
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 04:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714881743; cv=none; b=GWX4tUiBCrT3ZOAU+Y5c20BHENGXZodEW4JAZYQ8KjmZiEl6jVtnJ4dOHOC+W2l0yq0hPnSTZPrasPqVOcfO7n4+az0fdrMHIUEmL3phcY+xGKSo7213ifmb8RtcStsD31VumwFtDxNIqD2pPeEfnHKUPGO/8Krqmf0WY9VFE9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714881743; c=relaxed/simple;
	bh=EAU1Jyv4brPpkq/VES2kp2nO5fCt522DvSsJIp/Sih0=;
	h=To:Subject:From:Message-Id:Date; b=MMk32oM8QPUCL0sXeZWRgwJXHcVtyQ2379xlIB6bp4sbf6Nr/0jUXLduzz4IBQ7dMDxN1eBFeDcog493NZGzFW8FOC6Sav26lIiM4zB+fJ3o6aP6jz0gcv3NhYHUAtSLSyMDIDxsnUjgVLQxtx9GDffIAQiyUOIBWfT86lwsYn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pxr8kiwD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pxr8kiwD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D200BC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714881742;
	bh=EAU1Jyv4brPpkq/VES2kp2nO5fCt522DvSsJIp/Sih0=;
	h=To:Subject:From:Date:From;
	b=Pxr8kiwDOybxlB6g4qx7CyMzGltTLyCSgOQ1yfciowVu5Hc+NhyEyjDxfOFVQq80D
	 fBcVTAid1nWQmaCxitN6UzRRomztGJP/GDw0zOkHys2Wli3m7OX0q724p66BlhgxWH
	 IZw6hQSodWAAi8fsz06vlbVF6RrQmOYRmURJhRVvgvrsduwfMw2EV23o32751/cE8n
	 KqG41ksWZrTqgxCz8WNIZXM/cpsFf7nsM9AWobnvAhlFQwNHugnpLMlUaU1JHMfiNp
	 uWF6v2xJIkpY2TAOrjBYmPh/ZBWLPHArzSO4qmOh4U0yhZu7g3A/zOpVgzlw9BWNpX
	 Nj5O5rL7OoXlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5E8C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171488174277.12459.12969222865948979202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ea4abad60e8474db79c7d10c3ac0b7def8f328bb1c9700a3d3a9c218b02e615
Date: Sun, 05 May 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714881742
