Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20291171D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736141754; cv=none; b=YwzD5qQWB1+QTSth3PlFDaSL7rcG1h8rJE83t3q97XUcXArtKLS0smfQmfftZgRVA9Xy/pITzBScT/fzjX7k2JQnEf0RrZSneTm25bIuRbVIukIlO79sKPnuhdXEjoO7Jjid3i3OnnEmJ9gGjgoYJws6WvUZenDaDZgG8wfv0IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736141754; c=relaxed/simple;
	bh=A5HUC7GGvFEjxWVVkSnwawl7tiP6ha+JfqAaEDW2cVQ=;
	h=To:Subject:From:Message-Id:Date; b=evfN+fHcQ5JFzDauFv4TOrqsOrDIx/DFHc9A56Lraa5N5/bFjFLgfDyxGbiMyhgZtrm0e68u448y/PR7s30ySEkOWyjXlE1KIGtgeaZfOwRPLZZM+zrvNF1puqpbdU4VMj8NEhspF5VYPZAmbHEJEmmPqdicF+IcuwIE4LQpzCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjsbY/ot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjsbY/ot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A204CC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736141753;
	bh=A5HUC7GGvFEjxWVVkSnwawl7tiP6ha+JfqAaEDW2cVQ=;
	h=To:Subject:From:Date:From;
	b=LjsbY/otkFiUCAaKuMTKYf39le5ISuowcS3llKkAjDoby3plTGedxYdC8dlH36zj1
	 nL1xAVTEKM1Te5yOt0lRp51ZJPVJKCogmavxHPW1usMoehamiH2JjL8vS5SdIged1U
	 yDEipQFDhg9+4mLc7LRlmJGatvzENSzSMexb7Vrxhk3gl4/kKGHXzclsNp2szWIkgO
	 9hj9JENuX16uBGv6V+k+yEej48Ph4ThQ+X5RiDdIHZG+GCv0y5U7APiCs1CmHwfXbY
	 dGlvKZwR2zT2fyvOytkWf1YWR+X0t4eXaZ5Mis1XOTV4lDwoi5s8Xeuvch2zEguzx2
	 aRAZY+oeaKCdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907B9E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173614175358.14350.17544381119624581578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee2d9ccf129437d1d6ad6885db27f8a05d2c09c4c47f74d3b5abc92a0b32a57
Date: Mon, 06 Jan 2025 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736141753
