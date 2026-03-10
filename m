Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E2440DFAA
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773182094; cv=none; b=WHX/8jNqZk0VU0YR9vlkjf7Y0bkZTaHmJM60bb6O3yvgZw/qu9B6rfFsF9O//rFSY7CrqozEar3pMMOMzfWRq7fI8Ih+1lQzgz8tLw1UY2CQ6ApfRNA8IZV0CrOAknfsKiZ3g77ME1sdEm+rZab00yDHIl7jCPjPyYVxvtEzYHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773182094; c=relaxed/simple;
	bh=MZ25L6Yk7/JvH/IRNZXohGh1pwtCeyBXZSWdf8u5Zmk=;
	h=To:Subject:From:Message-Id:Date; b=KgJnBpzMpD2yEMNnnb1hf2BY6JtfB4i5ALDWqw3B0hWtTpy3VqDb+fP6adYqEAnsJHQSf2kEO52P1UhLqL0r72uy2DC+FHpugFGF7iVuADJ0H30zcw3Zs+2P0PrjqaOgKljXgdndtKjzDWEV6yYXbabkXGgLR3K+3NQTZ7nDr/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHS+b1Yx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHS+b1Yx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0750C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773182093;
	bh=MZ25L6Yk7/JvH/IRNZXohGh1pwtCeyBXZSWdf8u5Zmk=;
	h=To:Subject:From:Date:From;
	b=NHS+b1YxwikC3y6v5tsSYLoweLPcnIti0QdLww4314YywV/h4qHi0KV4n/1hQEawp
	 7z6CRUU41yLZlEx+wR0X5FOHBY2Rd7hWQO9s6gUWRKVJWq0VEr9W92DmmZVrGYi465
	 01CamnPeWgO/Dxu2weofDoLQlGPvqFP44+xo7vpNJUGld8hdNMKwGWTCpHD1SPgYCh
	 5QrSnjTXC846+0zBtTiqpAx5kqTEc1vggMASoY1IuoQMhBEJSh2l0FRJqWwFcjL3+8
	 EP+fvEFPOGQEY4fUPE10ERN78CoN3ATf6XnqlJ4Fkdbh12gsBax1msEwphZHdhe2Pa
	 /QSYpjUUWYtGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F6AFD88C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177318209361.8098.3760710695524568773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 182869eef1749922409e3b0d3ffbdb510b7c4f4e73adeef8c049f1a1e487ab68
Date: Tue, 10 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773182093
