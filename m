Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143E4277C9E
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 03:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779851554; cv=none; b=TaM6Ja/NvGw4GbIiPRwoIOD0LeBQ55F+qaL/vt3E//4VRAfRPEsDygqMNyrSbldUkR4FTb575LxSVg6EZqop7fPUrHgPofxYrr4LKtaK2I28CqF/CRoaNjA9gsRWQHAEFT+zY5sFkoXmLAiF4CzWYKkJhphkX9Y5YYdvIuG8fTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779851554; c=relaxed/simple;
	bh=AvMzOgMw2t6tXIVX3llG6YWISioI1Wls43G2h8+8kEA=;
	h=To:Subject:From:Message-Id:Date; b=m3JeSHOEwPmf7gB/uLABr+Idy2k2K2+STcvEdhuaT2X8EqkV543OsoB9X7Jx6L+TWqFkdDfCy9n6RG/WttrPVW4fCojC2bBoA1mE3ChRbOsgMBNz+zoU50R5S3arE7ILRFfGd3DBAkNVc14ZxmotfhxK2apvG5k7WjYga7s9AN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+P+xTqa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+P+xTqa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C53FCC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 03:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779851553;
	bh=AvMzOgMw2t6tXIVX3llG6YWISioI1Wls43G2h8+8kEA=;
	h=To:Subject:From:Date:From;
	b=s+P+xTqaYNx3HhiIBe6MlnkhL3pasUF3isNJCXvszWSTxTVUrxMigOn1y5zboR7Lt
	 GQwHhcI7syWjL4I/+fj6OXcDkcTI+RijRFmtGxHRGalFu4dnqGpcwHQ0K5i/HfscPN
	 z32oofCxomIVZei9ibEZ2LSee+egxAITFFyZ7yB3y3Or0jJRWD0Sv7AaW0CTLoZMbx
	 QgNojg+X7lZpKPaa98FusAl3VafBLND0AcVaH4rDuKgnacp38JtltRT1PcikBc7hlo
	 0z5213jl1xZJZ+xmXXCVeVbfP/ZiZwpSludZvE/3f3sqrV4JMtfYQX//UxKZRI5LzL
	 MLxURQPqJGg+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5BDCD5BD2
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 03:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177985155368.514.13205857080725669358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b17678e45539c7545f0799904e10471a4e4f0b0442eeb0c914294b1fd3f8fb7
Date: Wed, 27 May 2026 03:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779851553
