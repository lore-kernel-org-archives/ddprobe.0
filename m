Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A21361DBA
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786473034; cv=none; b=dgXOxCCoIUzL9tlSUZNzU018yU9n1yYPU1kSRWX0EZt4C8+ijITXafPq+5xhll5P/TpksEh/28pSsEhHqJ32Bf7gsdzeWcU7zmv6ibKcK8toSPsqYLF75vY4zsFkVnRCEMhs1cfohIFG8bBGU8y4Y2VoT0U5Lkw6KkBuae32bCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786473034; c=relaxed/simple;
	bh=Kmz73j3CRWkgze6NZGjGap06esAohmeFUBrYCDB7Ptc=;
	h=To:Subject:From:Message-Id:Date; b=Dtxl+sTIOl8ZAFCiRn0XbEWdHFR5KdDpf6Ucii8u0q6PCfuBgEteeJhE0J1JEdLtdwAubzGU39WvjjYsxg1OOW8/jSJNcEGvwJ1vkqzOc3wYJe47iQVqZfHactZrc0DONvDki6pfuc9MepR6rDJdsQ9HJRZd90zIbROUqkQBi1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTK/0MqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTK/0MqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC75FC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786473033;
	bh=Kmz73j3CRWkgze6NZGjGap06esAohmeFUBrYCDB7Ptc=;
	h=To:Subject:From:Date:From;
	b=pTK/0MqVXkQNlNOiaACpUkVrRQmcbzSILOoo3uRku7ExGXS7vGUGRN2/3cs8eo1o0
	 keqkmjM1FQo5NYZSleIF+iXgwd2sRdM5zNV4h4uqmbhyxTSyKEHTfCLbqiXod2fIPt
	 tcMPj9cQIDLXFIArooICOijNw/Oi+A8x3Z2z9ex7Cxo19KMyhGexMx51gPFv4pb7ig
	 5T0snKCjGW7+gensmYYjnDtrlJuKkIf3P5n4AMiDPqGfdxXzRscN+kX/mrtbK4ZlwG
	 FhlX3YFktv7y4xJwOWTh+FVxu4xz0hN6WJLZJNPSpyWrF+gysngH3BM+bq04xrIJLF
	 VB+Ly3Qlk4I8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA54BC5B572
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178647303368.16283.13549499699659156804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d599219e41728ffd38321cbf7a9b796bf91e3b32dc434384794371b5252ba237
Date: Tue, 11 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786473033
