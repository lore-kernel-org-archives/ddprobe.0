Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219551E3762
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766091834; cv=none; b=cu0Y3uMVs+sfZoylKCj/ADJfsUaM49+0bYgHe62a1I1gEVDtjDOvJds0iJIGVUrS5Hv/FjiaVNUZIGkKLPNKY+O6NUvqSUap5yp6lceNpnkWAu2ecXXf+Rukv3lKSt8P1EnDU/TV0W24VU90xwLnB+SbuPrEWnqP2Og0P9yLUEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766091834; c=relaxed/simple;
	bh=uQJ9OOv8PBE3SQs5TUE3Fm77h9TS7b1MssGppCp9zRQ=;
	h=To:Subject:From:Message-Id:Date; b=H7wAidzUdloH5ML+UMGcAi61W8TR7Kw0+C6YiUR2Q4Ts31ZTgEnfpLRcMoHUCD/hSLzXjyoLpgrFe1YQ+XEKOxly9y7i4DWtTTjToLmiv/62GORWMvEG6dO6jnmgTf6CMA5QrascihDRltcVMj4E5N9RRAAR7OGopcL6FhV6eiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNjXgZx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNjXgZx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74B6C113D0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766091833;
	bh=uQJ9OOv8PBE3SQs5TUE3Fm77h9TS7b1MssGppCp9zRQ=;
	h=To:Subject:From:Date:From;
	b=MNjXgZx7Au3tWgaV6tBhm9C6VqimSWVQQZ6m9ZUstr54J6CkUsAmQ12492zY4unFH
	 QXPI9+UpJuNgliFtlO5v4mOmAZoRiTJZAGc1TV4kDYuzjwLTjvCvWicDc5p/8a07Wx
	 BBheYAm9rzm/C5RcVouciHAAz9hHJOQ4d+t178LIhYcBBslxvsyDkFObvviTmkukJS
	 rJtqRXQxwrlQRbUte80OXXtjT2uxd58Clfzhpi0JcTl+9/EUvAGpL3hQlGE0BVRCM1
	 5ohwipvbdxhkhpkL346w3q4DiIPaXut+wKMG/mzFSOPtQHpvuo0vxeCO+Ukk5VG8nR
	 SXnq/dNoUv1Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9441FD70DF2
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176609183359.12466.11228435407992323939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8da5bb0a7f04eef8336e03de11f23a9fbb808c3982d30db36682f05bb559ba4c
Date: Thu, 18 Dec 2025 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766091833
