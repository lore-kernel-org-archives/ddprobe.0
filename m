Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FECE23AD
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754012394; cv=none; b=eguwqXFfa42PAcH+cI+Qa9OFPdWvKBYVun1hqnXy1clfDvTJpj+HSOeZi7/AwaaZCxyeRyPlVj01aJ/wAj5gFLSL+Fhgv/zBwdUztwIUuLYNZA17inzG/gCgUuEb31DuBsgOCqF7KvEtpASysQEXIDaIMd2EkxyRU6LQ6g4/smk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754012394; c=relaxed/simple;
	bh=F52yZjwB9foDJl381jqE/r1K2qilyoIvvUypNx1WE3o=;
	h=To:Subject:From:Message-Id:Date; b=daM1vuv/Wvje/Bm+kSP65w8+910s8hXpPYy2rBnHEH7Bqz2ghvwx9WGU9NjkYgnVouIEEIsktrNoyYo799g2xoZjyRo7xGwQ/V/SL7kNs/b3DnT4XKrTAoykAFhMCgsi9onbl9TnjRQTotqCP8tpBl9MzggYLMeHLdNRO66QHq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9O3TG/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9O3TG/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1477C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754012393;
	bh=F52yZjwB9foDJl381jqE/r1K2qilyoIvvUypNx1WE3o=;
	h=To:Subject:From:Date:From;
	b=V9O3TG/EJfeWM+iX7/jyuun8WJnP4a7wzqbaadFuPjPjkvJ8c02KJtbOXDJaWmDVD
	 wP9DRaqZwhCoP/gWTwyjILOFCCnBhrYGcCa5DovMQ9s6YGF6xdKTFP5mXmWLfJlxIU
	 vBzq7jLGHgcpB5uDKSZRAStiudvl50FLVuXJd6HMxnbsq3WAnUsjyCxtr+jZlySw93
	 AQrTaj2yhkip27k4YnREJ/8uD5tkmnTute6HfY2mv51Hw5Iy9q/+vYnMt4H0/QbbCg
	 HLtnS5CH91lE6LDX2xyd0M13sXuC3NA/jbG0v9fUUBIQOuH0dmWwAvCuH3qb9h8WZS
	 pF2zKAzWLGOYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C0C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175401239358.11731.11424595199575931038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a66d4402ce5a2d7cf76ed2fc24decb9fd6d152781ddf265b1246325b9492a804
Date: Fri, 01 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754012393
