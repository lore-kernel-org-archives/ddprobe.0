Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0050F22F01
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770384834; cv=none; b=dnBTjpnFvd7lAElFb7UtnmE8BrkSbEAR1VWfj7yBGRFEjYw8DOT8sjdV0DiwGUVYa41pbTZ/m42hxhXo5iXgMe7UjTvWfuefCz1gFF4POwwC8Ap0eIqQ4V91BFaws5Pnmo8fPBzeR5RqtBaIQvrb3d7AWJHBWqMJSJsypRe/XPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770384834; c=relaxed/simple;
	bh=To4GGuY5aNhnFhik3+Lxxr9XUlASfTnG9kY82L0XWS4=;
	h=To:Subject:From:Message-Id:Date; b=XHanRWOwVBfypfHBtOPjrTt6ZkBNQHXvR6Opmk+brsYn+I9ve90s2L9cKhT5B6b+l1lE5UaiflEoh/uIpivNkWrrwIbbTnuKZ1jmTQDi6Ec88wogEC15wt9I0wiXohAlW5rkEyVErCBEdUz2qZgG2I3iVsmrqkHh7YRgldG4EWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUoeTq5e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUoeTq5e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A520BC19421
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770384833;
	bh=To4GGuY5aNhnFhik3+Lxxr9XUlASfTnG9kY82L0XWS4=;
	h=To:Subject:From:Date:From;
	b=VUoeTq5e8JRNQYMP6gJD3vjnLoX0YVlshbdDhfXTvdv/Up2xBXaHK04a850uz3CWr
	 DJCwQe/T46feQxVrXw9iiKoKw4KXBpYXfafteSdglqbyTcagYLNxuV3kUoLep6S3W3
	 FDtc6bLhW7vXUdndND77YKrRhem8qrbAgoFxOBZrppYHxPA1uJk2SUc2R4ajQrSPRZ
	 xF46d38MHnIo684BCtCqzEQ1560fXCL1R66SLZKtxI/KoTAfhOVrRwBhNnB4Q01yOp
	 xd0tNuSaMOEo1p+x1HysWyF5Q4GZNxwxe7uffRIQlBbqo2/GOuLSr2T+Iifjg0zBPl
	 6lP4oG7BiRGiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CE9EE20A0
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177038483359.1643.4348640527007153376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e7f794c69dee39368ea2700672fd867d34cc5d2f10a2b53b1fcfbeab443783
Date: Fri, 06 Feb 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770384833
