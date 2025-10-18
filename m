Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D39B1BC3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760795994; cv=none; b=qH+x0Bq9hvwifF3qY9ZjpY6kS9RkN8fntjz6khjCX+p0Yvu0z3E/c2VDijIOGSeGjov/SDSvJwxjmCxathd7aV/LNzASv2QwG5CMmokJS3/JXXjwDMziJdmP/cc0fvXwl//KAYS5bd67hoat0twcq+ZgIcTC3h8xCi85QOGKIAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760795994; c=relaxed/simple;
	bh=QvRSUuWAeTz3BQviuzEYTZOus8d6pmKL1bTljjuImaY=;
	h=To:Subject:From:Message-Id:Date; b=p4qh1Xu9CHLcnayDHlzjaUsd7pmDCQbTaI/ZD1a3RcJfLLLdWwYcU5D4IlrO9WWWoaG9HdZW8SVdKPVUpF/NJGhOphN5ArZfsJA2OREHp/J4cGwMRzn2p84sJjmcWXfXq0/w9GW6oDlaPo273kJPhmMZOWBJghruKmr6zBImJIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtY4JOdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtY4JOdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34C4C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760795993;
	bh=QvRSUuWAeTz3BQviuzEYTZOus8d6pmKL1bTljjuImaY=;
	h=To:Subject:From:Date:From;
	b=YtY4JOdZJ6LCYzvHn35qJECdY0B72d0YmtGrdEMUTcfMuj2kpNNIx4rgGMx6lnsp1
	 5tBE/PD+of36jSK6egQLQ97aKqqhEA/Nn/lL5P6Fn93qaUc61MY9x2oDSQGxNduZSv
	 l6uM8780vntI4veOSE/iBECq2Y6rvWHa+4Ee98GoQ5Dsx/+lG0PFuydMf5rDaBDKUh
	 tnoi13UxT66Iwo2EIlR7sJKNgIWoBO5i+5KiEkznzAwC7iMCEV2fEtZyMDJycKymNg
	 mxP5jFiJUDPGyXKfxSG1TysVMTEoDh40ZinvyFUPK5vx4iip9zRXQLUrhJFqEc0tIp
	 zJYWQYIHJvhng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925F9CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176079599358.8382.13129710385828224977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ed42ad47993d5cd4d327a2b9ba8a73de0421b1eb3c6c2edeb9f8e83052e325
Date: Sat, 18 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760795993
