Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0EC35B637
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773700494; cv=none; b=fxQh/yXPbQvkYIYhe3fOHjSIGz2/tZrlYcZYSvKovUXFjkGblZhUrIubjxD9nPGML0PDeLQH/fXjyhzI4fhKrDiRxw0DFS63uqD+P3njPsm4pn3+OeVi6EAryOSs8zyHnj36CxmBOpghv+rL+joo3veLhLkkPn+mqYcHx8db0PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773700494; c=relaxed/simple;
	bh=N3VAFOfKR7rT7PHnDaKurYtU0NKSioWzukapcwuKDV0=;
	h=To:Subject:From:Message-Id:Date; b=fy3KS2z7BpD4xs9v8ECX7qAiFd0Mr1d6HLjHsQlNqVBfk2/PNMjQHOmqyQ0m3+8Qa0i9dm+CQbAs+rSX5uKK9PdqPtqL3HHeDQVCsfRyehfaX0d9c+VC37ZmI3FQ21VSF8M3q62z/beMtSczTG9HaQfhWlysOot/c4QuxqiqYJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoKLLO4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoKLLO4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17A6C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773700493;
	bh=N3VAFOfKR7rT7PHnDaKurYtU0NKSioWzukapcwuKDV0=;
	h=To:Subject:From:Date:From;
	b=AoKLLO4Ag+rWfTVBekiZ7KEYfF3CU58gR4LEW+VhGqajFIv/T/jnSkF4qRKmaOL7p
	 Rc4n9OxnHn4n7xriZILiRRRUcVxxcdyxToQpX/cMVy+MxI+qLwke/DvN3t79i+Iy93
	 AiZKV+A5ZixTmEQAv47K9U0VvD2/btlz0/p62vHs3cL2NQ18AbZqjHRN47cbnhuNiu
	 WY5DWuBn3P3cHYysp5gMoaN6C1iWNbXV/uMYvdfzO9C27+Ia/cBOyKtwArBZrcGLsU
	 YbxHsi52Dkj4uAaeMpzJ/55BlHG0PrsFB+qA7EcpiBPZeIZTRci5xdLoIlTKMaF70L
	 ZouAA8eUr+8oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FBCFB5E81
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177370049358.11818.9077284129447425155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89a473b295465fdcee884160bff84e0b690a0dcc98920e4054fa675f9ed640e
Date: Mon, 16 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773700493
