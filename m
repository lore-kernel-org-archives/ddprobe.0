Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BF435B136
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 03:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780025554; cv=none; b=oMm4/OIa6ihUb9FvTfFhwb4Afwlk17rtRiDg8eQP+Mvp97zc1uy88uNL4FLWejuhlK5T/9LOObAeaW/X8HMnPUHfAD+zHFQ6pX7DX7Pi/lnmi8YugGZQUonq0FbYIhat5x9UPCROCRm4t7Nud25ysszUuXTwIHCAiOAGr5vcu+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780025554; c=relaxed/simple;
	bh=XQkUwkUk9Y4kwocQgIdCjfJjLazGW1BuNG7yCRPgLyc=;
	h=To:Subject:From:Message-Id:Date; b=gdO7B0Q9i7nWH3sO0PDV0H0l0sEwKosAaCpfL/jx/77M142LutlqDcnl4nXZFAdGudCQj/sj/dM5Xx2VucaQnb6HihOjHifm/QA78fPSJVtGN5OFd7lSPZAU9X5P3eBRTYj+bBDwVVESRuPFgNFgtMSTj7uOSjXgg37J5USlN8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLKpnq3F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLKpnq3F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7EDDC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 03:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780025553;
	bh=XQkUwkUk9Y4kwocQgIdCjfJjLazGW1BuNG7yCRPgLyc=;
	h=To:Subject:From:Date:From;
	b=FLKpnq3FEO9BePkdImbfTBK3OeYok6TVHFn9sHRc1Ql2PMRKd5ayKOTOkUiFEYQ4p
	 5UyAa01RElA/lSCadu/cc3XsBI8l//Npwt4iojLhH+X090G5YTvWP765S6hMIvFONY
	 2oipfu/32F1WDbY8L7b3DXBc+8fb9UhuedFlf8HgHwWObvzhVOXM6z84h5G83ajXaT
	 INL8s88D52vbhnNYnRqG7nF1vQvr+01lUo9NhbzsWqrDCevP/JuKtdprhk8iESzR8K
	 Ca0nPBRDMrGwl8aDF2nzdh0gfeq/0Nr3ZodQor+CBAWwabpBjbOqFKr4HQJXaz/2Fa
	 nR+sxzd/7sKjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14B5CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 03:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178002555369.27558.6176173405984542994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf84267d012c671814295ef3ffa81606624889303c0201b611fac339bcc271c
Date: Fri, 29 May 2026 03:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780025553
