Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FF34C98
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748988594; cv=none; b=sLX+iTwUJKDz4E2HcnzKelZlRoL6G68PilgbT9qQCyNYoAVtbNS8JpgcHMCXz60EQxp7EBMnfLD610FQatuJqjieGVIgnXXy1XbkB6HZZLFNaKwevcXHBn8uOuzJZElDG6w+mimu9HIz9E6Po4GpY9H+n9aTxGr7z2Xtgc+vPjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748988594; c=relaxed/simple;
	bh=epwIZdZw9dxj+VgAWsktjaJLu+MtwiP3v0asbJfWzIA=;
	h=To:Subject:From:Message-Id:Date; b=jIDHkLc23Moo9JLZu7CpxEd6OLRn2a4rZ2y7xsE6VtmxUfAUwpBMs5B0cJBY+x60zAeRLiqDONbWqmOMBpa0if+hC+kFu6Z+ZrVdLbW0yakpFtDIqXhqJ9fNrTZiMGeWunO9kmbw3gY1jBIEqymnya79Kpt0BMBh28W2iwhcG/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBp4EXjJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBp4EXjJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2174C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748988593;
	bh=epwIZdZw9dxj+VgAWsktjaJLu+MtwiP3v0asbJfWzIA=;
	h=To:Subject:From:Date:From;
	b=bBp4EXjJkf6jfeCQRrCERoNo8yEwNzwHGk2QtV/fqr3rMuzot4GbIvCj8NWN53D1i
	 XphZ+qYmunw6nM2QhlIgSFKqi9OM38dkcHlWALqLPX+0dYPWjlXXoO2bD4SZScVkgb
	 GEb/d2NU7s8y+7ABryOWmAJF1a8SwcmuEtGQSo/rOWkcGZoG8Fk1TYkzlRzlvUe/Cf
	 Jahdf8DlxWN0mUPBRgg6rZE0y0bx8b0gJBnfNMHahNazXVbvqvZO+clmfF073nKrRm
	 VzRwuITO4Jsy7pTd5typn5WXgy2aNaql9VPudLYbMdoDzsjEjTkmuMTx5spxSxzzcn
	 iIQh0xzN46h9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A25C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174898859358.8516.17819504478712598488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294915ed1d1d98221c60b80c5729a6911fada11df24501e6c5302c90fd21b3d0
Date: Tue, 03 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748988593
