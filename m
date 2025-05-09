Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314CE1D7E41
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746771594; cv=none; b=ia11v83NjO8e8OkyNVzdmz1VStF2INpyPwOBBbQlROdCNKirJ9ZZkQ92OkZklg188XrOH96lDLxZQxE1JA3hnzHFqaTJVqpo40n84u/ilInTODXrKSqiBGa32mCX7yvWg+M/PX5voIZSxCmHMMcYKBEGs0e+/qRcnHVPRsx2LTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746771594; c=relaxed/simple;
	bh=NtYj2Ayq1GhnYG5s+YPe38qLLzVjlUET4g9JAA0JoXo=;
	h=To:Subject:From:Message-Id:Date; b=CBCvsiZuTlM+Ky9VGNYUVSUpyGZarDIXrIjRXOmjQyiapvW/wjCEc8np9kMAphuARIlLJziMUHHHIEwUOhDwYUrLKTwoyO82fZ7cFimMNJk/C48fy+30Xrkett/1SwWFdw+LxXTM9WH4Aq2aERiyMVoyPVnGiTggc6DKpJX2JBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlkdyEPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlkdyEPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3071C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746771593;
	bh=NtYj2Ayq1GhnYG5s+YPe38qLLzVjlUET4g9JAA0JoXo=;
	h=To:Subject:From:Date:From;
	b=UlkdyEPmMnQ0L9DgF6ko8rBMbfIFA6o1GdviCfy0Rr2Yub82elywE/U/7DE/ezUdG
	 1DTvn8y9uHAn2hlQYHtCuHAfcr0n5+SekR6Yxc+ZyOTJakVbBE1JZ8InVmDeD7MFBk
	 ZsX3hGKEh3UeKC3oIBLt9IDOKz4Ws7i9dymzniSldkKGoSVAh71o4HlyRr9Gz3oKu5
	 oDBXGqOgW6aV1wcYXsdsL6ncFoS9BXBbK7x4I6L+heTK4xErLmAXs0XdolsxhtJhj9
	 X2yIoa5k4MA9uTJ6pAg8iHS5EVNMABDCZT7UMdE/zCjnvRbWQduIrmeWcO5Ba1cWBj
	 CPUY21ZFsPJAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9175AC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174677159358.10962.1655988106874720858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b308690e7999cbcf09d79211a2569a0ddea4a4ac21de688c5f07fbdfb853b475
Date: Fri, 09 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746771593
