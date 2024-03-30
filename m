Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF8E1F9E9
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711792697; cv=none; b=hoUavOLE74z0YYI4I/UJMae7Fp4uRZB+Fp3CiHvwRfuxwdP0fqk9UCPPplZGPGNC5YEfRa/z0Z+MrnvWv5jpmSLx31xp25KOYnjojh0YTytRV5Lc7QvnC1K0bUd/7VS9bRhh5W7Dvgf0l9/bI8DW0wSHa0nbjgDqgrV2gfWY0eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711792697; c=relaxed/simple;
	bh=6wEi4y7AzncAjf/2QFh/UI23z8aTvSz4btfT39Yw9sk=;
	h=To:Subject:From:Message-Id:Date; b=O7CH8ZpV1DKJ2JzxAOLGcMl57xKdi/7fsMFg29chYOePBKSAIN8c+QgSVCzpmIJnZZNM+LK4wlgR/7TICNLg4AdrtwL7mswyxKG1J+/iy2zOPXQ+LZLgWyARjwhTxY5rGpnUCBjbbbo/b+bt8HZKlif+3DB7Wb9i0nh2kvJa8Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwHaIdoN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwHaIdoN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 691AAC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711792696;
	bh=6wEi4y7AzncAjf/2QFh/UI23z8aTvSz4btfT39Yw9sk=;
	h=To:Subject:From:Date:From;
	b=LwHaIdoNoJv8+gvY2qviAacvyn2qeDMgpl1iVkGO1Az8KuEcLwwKqNKd545HJqHZs
	 qVpm/T7y4H5lg/+ruX3N4DLlOua9u0beOhLHhp5GwJwOMcjyNXS7/1CqTeo9PQG4zp
	 wSREsIr/XeLLKi4azlauzbzxOu4/3r8NcWB7qo2+53CwVpgVMBmbjchjEJ5QVhGNqO
	 0LWKos2bGZFtVXhcDe7din0Yc1CXFJ1Dg3KEai9NmHsyyU5ABDrrCNJXWeVNO4L9en
	 WQrghxHPE5ZZpOQJp/yzd2J43ioGzCwN9uM+HJO9T0ravodeN2B7MXIt4GvtPZPJ8j
	 khaxFYhqGSozg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 627F7CD128E
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171179269639.22780.10871329605718448825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d09cd007f18715734cac4770ce6ca13dd91a2b2090db81bb3293f5844f55ece
Date: Sat, 30 Mar 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711792696
