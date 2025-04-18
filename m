Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302B621517E
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744999195; cv=none; b=MrjxwL6WxOXTyOsvo6GZ7wRS21sDXhCj5wcG1golZAyqTU8/OdU2+JltOxcX/uAoGsZqjO+Xq6XEoafZk25wrO0tjx0VMjp/IqR5OaeDGoTnAdm9r18WKo/K8XDGUdQd6CFDF4QIZZ3LQXOTOGAqo2cNAaooESdVD/B7+7tlle8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744999195; c=relaxed/simple;
	bh=MGqjSSG2oGEdrXugdEvGK77GmyvGzzZbGX8vWkU9Ln0=;
	h=To:Subject:From:Message-Id:Date; b=kUOcecxAwgdHis6JJb0Sn3BlaKh05033w6Ue0zdcLGoUgO4IdUr7sccDa+a5WHtxqiHh9ZSiHiy1w8Zs2WXGk6D0pEDy2RwhqCW0AEJjY6qFNVmRN2bdJdeBHItgSzUfBmJ0fneSfifUa9Qr1tjBQ51mGXBg6ZRZr7ShE3cb/As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYay5Qj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYay5Qj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67FEC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744999193;
	bh=MGqjSSG2oGEdrXugdEvGK77GmyvGzzZbGX8vWkU9Ln0=;
	h=To:Subject:From:Date:From;
	b=gYay5Qj5Dc7hUgGeYybnKou6Xxn5Kf5nTNDdzMLT5GMGcVXxnP464M4Jw+TGuB8jh
	 AoF3W+qJup+Ja6WtQzMfZsOaFGJ8GRfLz93Bn8dHq642BbRsX5xUfR5+39Mx+xYN1S
	 vQJ07OTIzzYSG9iTL7Lal9RAkbr53ZLO/ldyLtYXbAy99wpE9noe45noQ5HCHT/M2L
	 n+siWk+AWFy8OKPOAP3Z7C8MCofejsxkG5tY7SaN4zsSkn7nt7Ol8lXIXaniTXJY1F
	 rSOjf9y6NiNZ7e9a2F7Ccyl7oR6d3o4ZutpqtN7tSWbvEFGMiPiYySj+Qwj2TNZ/Ir
	 PFh9Ke5s4cdBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE1EC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174499919358.17708.8698255160854934207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb842ec42149eb058a7a124b42c776cb7a099524d4fcffd0e8caea9d28cdf7cb
Date: Fri, 18 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744999193
