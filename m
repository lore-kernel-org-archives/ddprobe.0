Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7554E18D
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 00:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734998754; cv=none; b=T7SlkZ4hbB/glOTuVKPftHzbKGz5zcC4vrj7QqfkWholJ8Vmw25OOqdP3T8HlmP8aK2FDgUw4hpMMJaKE/ERTgr4UbUXxHIdczyclETVqnPhtBMSQDWfaNDMuTthQhsSTZQDhsbREygN+bOQFRq7a9fWPQPW9xRGEbQU5+X0Tm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734998754; c=relaxed/simple;
	bh=CrgoVcppo1IIzTnMMjsRkmrHPcImF+EIJVHPj0j6j1Y=;
	h=To:Subject:From:Message-Id:Date; b=k6ye9mkokwxcR4Et5uGGkmVcG0g0L/O+01/hNqzhHBDTkF5zo24E+4cxueCaquKY71mHHQJZgT/578g+oQ0zfCk4qGJA6Ds6bWRzipKBPEkDRieHmSzkM6C80/bgTZhlO30o3OjxDjC/RZD5QRkBps26hI4l8xM5YXAI7iHER3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FF5ldnWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FF5ldnWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E32A7C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734998753;
	bh=CrgoVcppo1IIzTnMMjsRkmrHPcImF+EIJVHPj0j6j1Y=;
	h=To:Subject:From:Date:From;
	b=FF5ldnWUe9UI9GismgvXuDjO5Opbbz3bB6YcFwxA+JDhxZkevrso3kMZYgcNstRK3
	 xu1D6zBSJ4P/Vcus8kdRKgrdU0lmfSxkW4sOKpYqaeUhtuPQUQve8ZZA6YrrpBP8lh
	 8fOpEnsqiwylh245Gia7xEkkRvzG7hswSYsnwkgA6NhkEsRtLNA/Prfic0FzLod/Ne
	 i5+PfRZNzcno8lPO0BYyJidFnrZpqas49qqE4Ui5fop3QykQFOKw7Pqbk9Ai5lx4gV
	 M3BwrnSZlzJxCHBn3yoFNzefkIXATH9iOZJpg1ERNu6TSWvJ0lem0ze+GUDLHZCiW2
	 mEpuAfTEIyc5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E39E7718B
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173499875364.11255.3014731089996820597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491efd053b68a381d8ace67ebaa2987d2a2fd8cf93d0f872e8cc7bee2a731dde
Date: Tue, 24 Dec 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734998753
