Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EF026FA7A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 10:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779012634; cv=none; b=X3eHH5wSLypZH0bUtGVTr8XZ37yU13aX8p5DwtYjzd8HXrmKRKJkz+sYxKe2qpB8yfEUAB5wdCSDoq917Qh7IrYZR+r/nHdPsEWX3SBH7pYP3hVgm51w40Ov5//5Po7IWu6er4eCJudHaycq21oIbbpzuDX/hGNClKOoZdZgRzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779012634; c=relaxed/simple;
	bh=HgtlPZ/mfzF/+JA22K+qUL2fdrkXh98RxjgLkxK9V5c=;
	h=To:Subject:From:Message-Id:Date; b=Vb/7bdLXlXPLQByGzLmsbvWM6SUvGdO5Y4HLtNlvnGZlMBxe9uihZVoBH1G54IGxwyAEZoQEmcZVUAlfydpgR32o6V4CJ3doME6AaQk6Ah7MzuOwkKX5A0geQiJjnvFlHfkQOaziDhvZPukFN6XAyc3mhUlF5oZDA8CXnso9pbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqkfjIN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqkfjIN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1875C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779012633;
	bh=HgtlPZ/mfzF/+JA22K+qUL2fdrkXh98RxjgLkxK9V5c=;
	h=To:Subject:From:Date:From;
	b=NqkfjIN+5OHea9JvCkGSL5S1N0Vq/k2FwonQ2wJ8v0bRsQOs+nnMC7vm1wMQEUsqj
	 Uvd4toBRcVD9KWDi4Sz07pmszuBXhap7WUBXfo3yCsQWVvjF4jqTWRyww/RZdbamD2
	 FRYtfZ/BxQR1yiwfbKbsJc9p9IHocODfXjEO4vXmSSGtit0JyoRioHQBC2fa0C+wxe
	 WQXG5FnYbfYRldEPQ9qF2m/2u0MWPKbN4Lw9KyaOLpI/Al3NTBLJ02lRpexFW5ewEY
	 b6B+W9U5gOpNI7Ng9R9FgSkjHuVTu1Sgmv7Ns85GrWoF1YhMjkzs7likBv8+W4gm0m
	 qQf5jhY8W9ppw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1086CD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177901263368.10196.6285390206292627764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 883fc750e008e73e7c776f6a34bf10d21a7cc15ac37a1c491fe6d3a37b5c5d4f
Date: Sun, 17 May 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779012633
