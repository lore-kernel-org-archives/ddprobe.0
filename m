Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F3A39A076
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 11:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783598314; cv=none; b=i80cfYa9h+mTRj3rxUuKCCjFoA8rBgmNC51OCUGCs8oiUWiVIZHvvRPlojklJEL1Z3fE1pjkndtDN0kbAtpubqFlfR4dwJ4Xmp7DxwY047j4J/SsF1zgcIXu/r9sNmd7t5xMuYom7a8hri4JZAo5H/IzM8zGe5OGXZmUQVoWDLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783598314; c=relaxed/simple;
	bh=7cwuz1TEuRp8CKqXA8CB1gIpz9Dymx4RKV1qfR+YyK8=;
	h=To:Subject:From:Message-Id:Date; b=ELNZTrpzBkBXv7C9Y7iTj8yeQTMy7D2XxpJMpcK6Pr6ryfgsScUYy9c3IhCCtQ1VwRs7O+Azu6bYjBb2DHpbVX1vy9LvZj7RnCUS+0DVtQADq2PXf8M1TKqs0iM/muKvQNBND4Ow3yVLakwwDlRrBnQUrhP0cFMhEI2GEEMaIpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9CMUV0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9CMUV0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE951C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783598313;
	bh=7cwuz1TEuRp8CKqXA8CB1gIpz9Dymx4RKV1qfR+YyK8=;
	h=To:Subject:From:Date:From;
	b=k9CMUV0zkk6oeVaV3CoQOMPxwJX2PO8WkYfNGY5RSyvPKwbsP5Z/pYndwX/sU074j
	 JmgUbDyop077GAy3qp9DWR+gfeqQKTyRiaiwYbVsgst6G/BwUSeWxYROrK4HooaN7X
	 w9BtNa+2teO4WeXIrPlhgF3hGaY9ngfpG/Bso6XjcbIvJqoj0M5s7OOSFIba/8wS9d
	 SEgcuUUpfjot0AU03mlJM9RKQSGO2UZ7X3k83gweQVG12dE4Vj0iL79s33vqy+hqkl
	 zK+VAVdsMrWNYgBFZ4b0WUMqGjprtvo5xdTIZL6ojyFy8+vHi/2+jHuzNOWjrjONwA
	 CYoUXh1c85Tfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90C3C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178359831368.9821.991116513106740286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d9c37310752c28c60b5b9213747eedc6860038b925a06019c5c2868b111014
Date: Thu, 09 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783598313
