Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492523224
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738551954; cv=none; b=ZqC4zikwNrDiRcQvWnVwPnMtKO949f4UQp7/nSfZlgUYjsF+ga/xS5b2W3Ii0JuPLk084XQfDUWUwCyhQAAho64njmL4lJ5ntj0as/bx5p/++kb5iSzounCvzHOC0J/qNEStbMnQZEkYiY2UZ/Oi0QMRmkvvZW3BsPSjkddao1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738551954; c=relaxed/simple;
	bh=w2EYi1aXhThrfURN8y4PXnQi2LjyvEYh/MMG61iBgSE=;
	h=To:Subject:From:Message-Id:Date; b=LJH0cJP1wwNnxhLCrzZB191v7qsauc5vqWkOHwDk1mZKIteX2rDAp4dKyNu0GmMJ2ypEo4/J4q+lVOn+nYlRWxD3oEB41JkfjzJD6PwL/3OQ906YF3e+sBPZyHtjp5DE/NXi6EIIv/7dd6oDcIMLgmtvT6cbJ1Vreqhw0fNifUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWfg/ruj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWfg/ruj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16A2C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738551953;
	bh=w2EYi1aXhThrfURN8y4PXnQi2LjyvEYh/MMG61iBgSE=;
	h=To:Subject:From:Date:From;
	b=lWfg/rujwWEh/WgqJceWdGH1c+0NGOJq/FhZBtEiZAo47KsN6KO+aWWBXoaS9iTxe
	 xlggIzF8NNdEZZTOGwlQNGMu6M7ogZqpMA/6Bmg80aDkGdjgkLH5J26WF2vF806Ger
	 hibxamj9k8caVyBH2/sb8U/VnnTV8TzYY5swb+nx6WLVwNwfPl9cH4imEJzcyM3/h0
	 +t3WNsWpXLkFfB6+T5dLdhXPURl81wYHoYC7PZsE2bXm/AykibaIIW0pliRgkK6yJK
	 pDZuhIl5B1IY7a9acANn5xthHI1jl3S8OTavfZS12/1D4Qg2C1gaO4ZY8w+DE1z1Qu
	 5PiSXDMDO8KoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93232C0218F
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173855195359.12473.4896777628765890090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6f4575ddf059534757b0a4c47a2010bbc16c5040b787c1dd627455ede6452ee
Date: Mon, 03 Feb 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738551953
