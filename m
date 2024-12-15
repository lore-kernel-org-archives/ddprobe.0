Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF221758B
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734284154; cv=none; b=QgkVy/MQ14jShRim8Vh7hEeej+t9ri1pI/or8eafxzUKvB0qJVSWhZ6VrWVCm84kxOasuGBsbQqdqdaQmoud7n3lV2WYo0UMAYSItyV2y5ClXVSXhDxxj94p7OVEs41+QMNpt1oMJEivHdqr4yTXDxeWbV1VcuXo4hw/cQNeOrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734284154; c=relaxed/simple;
	bh=2sZAjd34FCk2CeL9k5Ozu78bQxfFCGmm+2GqwXjZjj0=;
	h=To:Subject:From:Message-Id:Date; b=HrqbIXakq6vAPl1vnFplbX5O1FglNSn7sx0yh10/k1/e4RQe11QFd20SLO+jH/tSEnI9+Ya+B+sk8P/oQDYJc2A/X1XDAfbWvTMPjK6on0CVff/c++Ea+LKPFDGSdqjBC4nZMvoNeoXA2Iy1XEsGHb7EwsVTCp1KEJubXptuCkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFNm73wz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFNm73wz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B04C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734284153;
	bh=2sZAjd34FCk2CeL9k5Ozu78bQxfFCGmm+2GqwXjZjj0=;
	h=To:Subject:From:Date:From;
	b=HFNm73wzDzBfNGtVsFxZ6cCzsCRgrO2r8mtZfFD6QAkX8xVXRtbOTSpqhwErrJ4r7
	 ovxJKV0SDOYLkP+VJg7vxP+WbIuMuHFqN9rGhefosm8JhSH/8e4AVIlZ+92KzPxnIF
	 KcrELdrI6XGfhgdd2IVhcIKKcfuavgmJBRP2Z4VtJD1yRLA9Kliw7hJGy81Az3CxCE
	 1cPMnlzUxfJSxbj5C9zKJx5BQ3dBPpPSgVDoYe9Af3dxSLytBfjQtQ/xKTF9GgP+dH
	 acEC5Nzsb8i08/ZGHMD93KzYzHdbKkrPnKk6q3sGQ7XEIX1SpxDNu6lVYrD5CDt9Aq
	 peDD2Ymk++RUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927B7E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173428415358.18386.9813974081129443227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 034ff125d91240737b6201343ae8a29e031fe71ea179db44f641bd1443fe21f8
Date: Sun, 15 Dec 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734284153
