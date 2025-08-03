Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3956F185B67
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754246995; cv=none; b=KV1FFInnXNY8zujPcOPTYyImotO2PL82Lt5BWP7MjWUYAXFdBKl+d7bTM9M6gJldPsoXo3JVYe9aRNK5MTOagF6r9fnRF8KJJMbOVImFx/kL9V1/AV4lGdZqFHbILQjZGkgIq/7Qr8KPxsAJ+Wf/YwBGMTuufcDZxFJaD/hyOC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754246995; c=relaxed/simple;
	bh=orftQhy4+ILf9aJ51TYStcwwUNMq4xFbFVugPN2ICNI=;
	h=To:Subject:From:Message-Id:Date; b=qjWdMTkH76+0BBNwYlO6ky27k08dX2yCpub7ygr5f/GdwBwr+DExPNHb1Yy8qJTGNj+ZFsrGh+cQ6rlZxPC7FDwhEix2cOW09KBI6EVVUEOWwcm4lbi4glsA1XO4tpRpdmsewTvn78q0zQxqMGY2kl/BUAeE7Wmi1BJU1pEDxQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBZdoNIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBZdoNIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE2FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754246993;
	bh=orftQhy4+ILf9aJ51TYStcwwUNMq4xFbFVugPN2ICNI=;
	h=To:Subject:From:Date:From;
	b=OBZdoNISZoKkZGhY5pOSSZoOV6zrgj2pK1WK1m+GNzPFPdvf9Pkazc7RfP/4/vo7I
	 x1JenfcOEDLNuh+8ilkOT/8agmrvtf678vdQNrssB0HQfEhA3TYO7muaWIqMiL0Xr7
	 IhvNO+VI6xNvbkVRjNY4S4JaksSXoE7fArEA1sKzzrWxY2tCuHYu1lOPEbnR2HZAx9
	 S7BD+UYxUY3F7RygX+cVC+BUj9MlKNpEvViY22VAPY7dq42YK2PrDLZTxm7wktNZNd
	 uIY8D2/NIh0ZKGa2F+7BmrSdwqbpKYVlD/sfqIOy3/rpq2IJkT3AmyznKoOqBB8i0I
	 OvC5bGLJfDoag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960B5C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175424699359.19751.9604177338108914827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 351fad76e0c437d49c16b397f8f336c917c80570755c8578ada3460a60911900
Date: Sun, 03 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754246993
