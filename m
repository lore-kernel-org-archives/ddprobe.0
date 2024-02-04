Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0763810E9
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707012497; cv=none; b=bl6OH7zORax6gYovoK6IyDC1PyyVJSryKLk6mwNoxcC1lB3vA8tZp0iAxfeKXDl8mIDhGgQGQqigVo9XJsGq3U4VSBTHX8dRiGru2h8zd9Pw1NaATyC6/0R2RpG71THIBb53RZ6pZvn5c+nWcZaDIgwk3t0sN7qNbJV1VXSGUXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707012497; c=relaxed/simple;
	bh=b88RwZXjJOTYA3cnH1+8P2Em5ET9/ha+qmy1lN3rk+g=;
	h=To:Subject:From:Message-Id:Date; b=AwA+cxQpJStgaYPfDBRypwTKu9Lk3/2zdwWvPf1vqrFTiUsFUfG0QcxWwSYAHT3dn4Y3vgucZIp1EYaO64q1+yllhaXcCWTHFknnDAFHQLYb04HbuDjenflPyLvUDh7JDRJQVSKiW+6cvo1tPKw/Qm/DTZw8KFZ24jJ4Er3ZcNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfLB9Lj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfLB9Lj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E8AAC433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707012496;
	bh=b88RwZXjJOTYA3cnH1+8P2Em5ET9/ha+qmy1lN3rk+g=;
	h=To:Subject:From:Date:From;
	b=TfLB9Lj5ZkaiiHZYdudiktxhPDRz1kJGmehnzNiC4Et3PDnGO3nbVrwhBxl28MEJr
	 8j0hgW8hoUoDnCOkwpsrXVdxES6k/uzl7Gyvv+puaF/c4O5v1+ACU3Dv1Fs5j+tC3V
	 JBWtFcCug3bE9chsnm1XIOJ3qYU9zYd6i1auN6KJoRTVwffCjEmGIS8rRSnEdzVCcH
	 fWHAJwwxjCMrEgegyGdariNJjJhmMEisHk2SAzBIZ4Dma7b0i+I6H1jgVF7+qjZzyv
	 jt4tqLUOqc/fugtR4s+zlZPmaa2lXs3qvXLcvZET6W3LTlIut8ea0Nz+1Vml0jwM4W
	 1Nq9d61jb9IUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FEFAC4828F
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170701249638.31914.4210771093417392981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8819193c2da017d5b7200d670637982324d167c98c2ce36859de7df21127579f
Date: Sun, 04 Feb 2024 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707012496
