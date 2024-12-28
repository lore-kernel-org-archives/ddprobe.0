Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5B533985
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735418754; cv=none; b=tIDWq+r2pZOR8Wlm5ARPgY4nGj6Uc3FJwhZNFwD2Dk1depvjBOKrH6xrRC6TmT9QU/IynKGan93Kd/OQloEIrA5OHEmjvWk5QQYYXUTurho5EAlfn6v3hX6wJvqysCEyHsNHh74WrvFmmnyDonc0TQWn0ctTQGZpyW5DvEHIXhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735418754; c=relaxed/simple;
	bh=t0u7GXEjBFwI3QET5KTL4G7VLLKPSclrgayrPUb7EWc=;
	h=To:Subject:From:Message-Id:Date; b=MXzs8puF2Lb0bxA5LkaesplolepUNrxcQyR7ETPdZfr8ZCodUEvvu8h296Tggu1wIW/BsJfIcLv+8HvIq7k3KxMfAfEyQXeBMBwQHPOdZYc1DpuEHUHwlqa40A9eSv4NF2Pz4dkLHAEyyD6kMUWRtNUa4vvTFzlkXvnpxy7zU6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGgTwTiV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGgTwTiV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA052C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735418753;
	bh=t0u7GXEjBFwI3QET5KTL4G7VLLKPSclrgayrPUb7EWc=;
	h=To:Subject:From:Date:From;
	b=WGgTwTiVs7L3A8lc96887S6Is6FdR8NCCh/T/UC9keIa0uLkavMFSWYhBjwBP/kXa
	 5/Vc5Y2gWX82kTboNa8o66RIodKbGW35OoOkS9m+/1qAm+NHsogNj7e6d0OIlm08mE
	 2GChC+NVwx/nxvgHGdK7GkIYtJcJ0XCHWk5Z6X6cE3sRkunfJzVtPrpG9cF14XDHrj
	 0j10o9mk+/ju1mKfkrjwCyoaalgd08RaHI6RvH6mnWoctPP9Vd/r3wwM6SVEJ6dCD6
	 602UYpHZ7k2ae4J/0lGZQJ2yov/24ODM57M0h6ZL4yDzdpZpcrEfwZ5XZP+Y9heH8s
	 oquyRSSXJnVyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B0CE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173541875359.22709.15268710990966692466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8bb08d0b69a8bfd817a581b8596673befb75f23bebde633cf9d14fd30891428
Date: Sat, 28 Dec 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735418753
