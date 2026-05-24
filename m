Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4A9B3B5305
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 23:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779664954; cv=none; b=NuuFGZoepLqqYU67nPCsb4b3iZUQaBHZsCsTXxRkBORG/T47F6L4Onawj8vhel3yrHqhOHQYBTQBZHx+z5AEBoJ/RZO4fSYuCXkEA+CYEeHcm5VnQkUiRI6z8c68i8NfxqYOeKuBY/I9jFnJhZ0DMNgULvaFXvVbwf3AY1nOSLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779664954; c=relaxed/simple;
	bh=cXWAXCKdCLtedpjrWG9pPhvQ+kQHgX0Zv77XZos/c24=;
	h=To:Subject:From:Message-Id:Date; b=MGU6vFQMNJIzA4YvMAqccqLnuMl6Z1BAgAMxRN6Mo0LZLlLoT7uVHuoMfGIOxW2Qmu9re9drHhJ3ENMPMPaFJaMPGAMlRAqKgBmjDJBTy2MSVzg5CdR5N1ZFUJXzxL+HwLtVTBIQuXCaQYgvO1ZwNglzzeKjlnfIO5H5NpZHQik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rz9cUBTf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rz9cUBTf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5AA9C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 23:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779664953;
	bh=cXWAXCKdCLtedpjrWG9pPhvQ+kQHgX0Zv77XZos/c24=;
	h=To:Subject:From:Date:From;
	b=rz9cUBTfIv9+5979tD/wz5Z6Pz8qvytfrSL/jGmbG3JB4Ynca3zOdWK7vBQI8VmXu
	 IkxUMxxkbJ36Wl2KuRWALbnByT6+LXgPuxBv4nOjqLukOjq0+7tc4h5FljKhgh4R9C
	 6f3WTDgaII/e0X3X/xxfpJJVpAsetFl6ZbuRo7OxAxusE0uepyUogbAtpc3toXyULn
	 9CDQE/Kk5sg4S45NW1Ojc9H75j7f3W5vC6IS4casl2bfURfayhq55FSlahlSbFQOMj
	 QaMTD5930MDcyl9uIEVfirsXF6x9oqR7flG6HeVhMSkf/c0awjo0MdwcjQ3T0k0iE4
	 0JNWxNQUWHHOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB18CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 23:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177966495368.2838.10104806134136524129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358142b2d928d9cb5e6e0c022e79f779d2ff73456f5baa483c7509abc4f6e337
Date: Sun, 24 May 2026 23:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779664953
