Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E0E264634
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749584394; cv=none; b=bhJuDiIlAaSNw6rYo22m6A6/aNrmp/S1qADXaU36B8IbrTakYFvN6l2fZl53dYDNod4VyRi/Hobey+DzOsngg1o0KeQJ5ownsSXPwHtE2OMaLpuVqRv/EDDNK/BOa/TjaouwHADJPJLG8YkbF60IbKCQNICIg/R9csLzQWRsefU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749584394; c=relaxed/simple;
	bh=0XleYfCDzjF7ZqPdL8ifKU4E5YyJ9GonPC1K+Tc+GmE=;
	h=To:Subject:From:Message-Id:Date; b=htWaictq9GLS2olFU0ou6PbD2MpCzOETrtVb9t3ZNQv0wVhZVEMIK+Ebx3E9Ipfs5em1Zi6YI+0rGHMYFOIINoJ3cMZHfU5UXI9VchJNzYwAWW/vTaJG1dstdRfaR9cFrltSABpfzHiDi9oBP55FXNjap9cdGGXxbKm4nPk78HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSAdoTBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSAdoTBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AA6C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749584393;
	bh=0XleYfCDzjF7ZqPdL8ifKU4E5YyJ9GonPC1K+Tc+GmE=;
	h=To:Subject:From:Date:From;
	b=FSAdoTBkgDBprHrf1FIEyuVy78g3dIoL+rPal7dC7YvBrbRqwBp9KgAFLA6OygGHv
	 G/aylWUkGjlZCbz/ytBfede+ldixw2I9NUh8jPadl4rACk6veE7s4O5YozZzNdTltC
	 9Cw8uF52LRr6blOVk3WzevTsfVGsA4QA0VlmwbTZQKEWn/Ry6FXvyqkoKk+G/07bVv
	 7n8pPYD5F0lkSq+3CZXE++UapPvdYE6kisqwGbe2DOfzXRebUxMYKBo95hfaGvExyG
	 VuXAvRCmpdlyDK8KSEdcNB2iI0c0zIxIrlru6w6mOF2cCzU0msfYz5vY3ctTon1Nei
	 sfYuhEZ9vmSPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90248C61DB2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174958439358.23956.4512331309805919651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21ce92818a6be7a604e65df62555b1463af110d1ad893bcb9d0332a50ebd0d1
Date: Tue, 10 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749584393
