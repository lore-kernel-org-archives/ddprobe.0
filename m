Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C321E487
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750537794; cv=none; b=hPw4PCevVXk8HUhK/IN/M9C6B8TARsIOsD2N22y2AnC8YERYeFu+/bNMsixbtrJfHzuw4UKrVp1mHs3GpslSTnGoYYXHDPNnBzsc3jIqlnwKj/yu3S09ZzGbjNW/0Dnx/mt4r0gzcdXxXA/eSLx5nKkeSce1JUaTEZms+DKg64U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750537794; c=relaxed/simple;
	bh=4uLcLwGJ49OpNtTC+ad9b5Vfp0Qvo0ap0Tiv0YlUqiQ=;
	h=To:Subject:From:Message-Id:Date; b=uQj5soFd8kQ3NCBe97uo5OXmMPKS7zJcatOWq2kFlIxdfIXu+DUEiB6xhUkxEZWXe/mBaUYDqwNOrr3+3/iWP7vTAZj8tK8cjIuzCoqc762na5WJNn1uMO1wfpRxLlKXbckn6hYtd4zN3BNRGx//TA0jW++kmUUTUz5CR4gGIeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dh70mkOs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dh70mkOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A236FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750537793;
	bh=4uLcLwGJ49OpNtTC+ad9b5Vfp0Qvo0ap0Tiv0YlUqiQ=;
	h=To:Subject:From:Date:From;
	b=Dh70mkOsQbF5sD1NU2H9mNn5H8eiLrKIKo+8PwKNPoEmq9XRPK47j2JAouaLiMyJP
	 vevgbBJvd3IVfWJCPuSeRzOdAxk8s65kNzlgQysQxqez7wHIQ1gF90CHzi8q/upc1p
	 EUVoNvBfQy/v+GmTMhgD1RAkSw5BpFPacgCLdfGBaAA76FLszTkV8066gQ0DJ+jFu1
	 EDLC3Np31XnNJAyztbL6+zPcHtlivu5koNfZt2nlIZwQav3w9KlryQpNnlHGqVEW+I
	 i9/iFVYq1BCXZMCSnUWr15Uc2bh7DR3iA+1zcYW2QvX/G4TWEB+7LzQymcebnnsZrV
	 AYgflfJvHFD+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D8C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175053779357.24874.2188320886731991342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 129278817ad9572a3fe117af2aa40df03ad8639fa780cfab481f99b3f738e4b6
Date: Sat, 21 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750537793
