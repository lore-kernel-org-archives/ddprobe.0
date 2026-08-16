Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6F52BFC85
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786855834; cv=none; b=gZSNdTy4z2EKH/C8JITywMRaQxBX3xho2t4pyqQN3Y64SC7uPUqwnyTQ03vBjM+DEV/HQK2WZIZnoYmxJYJAfC0V0OiBTKdQOM2iIL1skJAfPWhAip9Bioprlltmt0y7RGiBUiDrHfxWsYuE/dNOAQbrogZaBjZwXWKO5fARW2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786855834; c=relaxed/simple;
	bh=9czHs7BnY9Oi6AkV0XqPY81TxrzSZ61UucERmfjlsZY=;
	h=To:Subject:From:Message-Id:Date; b=NQ70yuB4K0vPDDFMiJHMS3hN4RqFixo9bC8uoHQ6PLXzUjQvW+ueLX3c7XhQato6qXH8vX96zvH394VN2K/wdNK+9UDXjhoi9KTGCB7DNBELwhBZ64Cju0zxdEj+SPV9b+CFlcv7BJ4clSf8MI77VbzP4xbXdyYlc9UvvgAd2/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5IMmwq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5IMmwq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9544C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786855833;
	bh=9czHs7BnY9Oi6AkV0XqPY81TxrzSZ61UucERmfjlsZY=;
	h=To:Subject:From:Date:From;
	b=C5IMmwq579DM2rUTaOc0anOs0lVr3Dt9Xgva58jGHC34myY2sUka8eVbbQfipiWO4
	 56vjT+3rS9WjVNzO3+gJZfb48S5feZELblIw5C/V2USG5OTTwKJOgksHrAkTgn3XdL
	 aY93upqU3b1OC+bdNlzcJXuE2hwAGh/qZG1jQOkLQyy3rDFv9RShCiBDkPn1xYDpzU
	 BM/nnL7k4b6RmjLyWW44ncm4cQPGZmxQsPdHPv3icmm4Ymybei7wvl+BhWThuI0uUq
	 Zl9+Zi0BTQZ6nle5/OHlPFVSdb0o3Vz2nFbd5drioyzp2XMJGKLcoX8S15Wq0oll6G
	 f+y4/YKzk+zPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF03C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178685583371.31060.17294557816284923173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c65c217e78a941ea896672c6c6b856257cd0807011a45c6bdf26506aadcc93e2
Date: Sun, 16 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786855833
