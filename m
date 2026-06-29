Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED2E3FBEA7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 11:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782733714; cv=none; b=fgYMmRDu496c7YCBEpS/rKMnXyw6s8hPxgGhHnntZIzin8PYFQ8uiqhKXzTw9W8DZBV23wmvXjOMgXtsDaMjr80XUzSlOJREj6M6RoxwfxUnAK65KjtzJ8GwnwZyKMaLdyPxZVPdEfbuHkTe0IrKoZAyuoLQvFavgqZZaIR3PHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782733714; c=relaxed/simple;
	bh=qrz0m0YoOg5Q+WBEkIllrC8iigNIZPCvI3vRnf3um0g=;
	h=To:Subject:From:Message-Id:Date; b=GLHFc78avbygsI2xkX+pDqF4iPNM10V7rQSLrcjiLLsXEv2kD5A+nTZ2XtLhQxqA5O91Xd+iSm/bL3m1Dl9Iomyc4iL4EbyUTNANkfmam8MGSKJ//jPnj4x9yuhMfCgan+a0bE5SlWJGzSBZ7xsSLdtXy+P2SqOFwheibkcpN1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIz9V6D3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIz9V6D3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C284DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782733713;
	bh=qrz0m0YoOg5Q+WBEkIllrC8iigNIZPCvI3vRnf3um0g=;
	h=To:Subject:From:Date:From;
	b=uIz9V6D3bx40YhtbLwLV3gxMa2GtR5yEIiYEHD92+KqHmRmtNuEHgrbr3O6TlwH6m
	 cPelORCw1mMpog9VjGx9mR7RFh/fK1UBuNYoM7dhynJJp7rFgKOygvlQ6Z+jMfH24U
	 gE+yUqQiFGpbTX+e5RKJE8G5SdyZ4CpR/pq+efAJ3FY77MM/5WZsK9beY91xnb1SSN
	 /0+kdxN/ahpXSwXq9akl2PaDCb3VwI9527mcNeQ7jq06dJekQhmlNImGkucLIQEOqG
	 0RWMyI4TejgAJNDYsRU790HDITRDz8eAKPGIqnxIV5/xANvz1DZUJtuqi2sZGEUfy7
	 sAUvXbKdgPGCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A991CC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178273371368.22610.860874044824795679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1396d191546b35355479dc6ddf7dc921a6baee6d0efe0fa8622fbb340b6193ea
Date: Mon, 29 Jun 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782733713
