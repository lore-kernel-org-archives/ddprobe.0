Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C912D1913
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774671894; cv=none; b=XpxcLItW697FNQqIXVugjqCqzxOj8fMxOr91QDe71Gkc/NKRmdaQEX/JFEkSNjS8gISJ3uMDG+Ve2f/SfV8lB8aSq/7tGBJD8VyA5Mio3xM2iPzCz9GwPTdiuXPSTxkpnPtCnbbpUijrKC+yQ8Le3+85ZCE8pQTEStRbyNskISk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774671894; c=relaxed/simple;
	bh=YoRs+Rx1S3epoZ83s4aJMuKWzzrKjB3vv0UY+ApvFdM=;
	h=To:Subject:From:Message-Id:Date; b=kX6q3j+odeLrgJeUowEC+vtqJqoAvDDoQVqBt4g4FHi4qT3igtjHufabFP77lL0rWDPlIXV7zKxO4pJPOvMLt2WcHUNk/6ueJWTekV6SlncTQVpe0HN2I3A/HNUyyU8/DYzLvVFGQ6WA7PSJlXJAvBulhFVtQYQwkESMtAXuMfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NW8ILTNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NW8ILTNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E59C2BC9E
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774671893;
	bh=YoRs+Rx1S3epoZ83s4aJMuKWzzrKjB3vv0UY+ApvFdM=;
	h=To:Subject:From:Date:From;
	b=NW8ILTNsuN0ib8vqicu+qkaZ/V8AO7WGRaswAUuaSYkIKF9AaFtLDsuJeNYFMDVEH
	 wmZCDiKIwflbBX+GVf15U1U6F41xOg3fMUTyUSXzVHEZFpJaYyLXXRO1iiniai1qUa
	 ghpwVMb3Ppn6uL3qcWV35ZCcrKBPLMLX2CylEvFI72amGzYfSxkhm7EQ7oXuBdsgKl
	 YukOSbBJJEGhCIgpnhUYV5qRmdspfXtq5hWOWGt67wvdK+d6/JQyv+PzcFf+b2wfJv
	 tdUwQ6VVXgzVZAt2ZiJr+jTHzs1ZuWkspNWAoJLI4sW2tLRRFUtbfE1agJGug1IXQj
	 pixIZmMJCJAsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9500E10F3DCA
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177467189359.3306.4467187107583460007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4aa8bf9930bf090666f9473ed1673e9b36728242b1dc5af3b364634046bc62f
Date: Sat, 28 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774671893
