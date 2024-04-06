Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A61F7200D2
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712382496; cv=none; b=iAAkW6tdaKp+1sCYBVebkv31Jrn9ssklgeu5YknKFwAqX6/oE+JYLU7myB8ejISMCkdbDb0oq5N/7U3oK6zSjkAoO5/i1SFwRFiH63Zxe+Z2rfFY2C7x0wX33WNGg1fhV2/vtks4I0L3mVmZBP6+4Ro6vX0IQqLvHFXrhAK73a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712382496; c=relaxed/simple;
	bh=qz7A6fbZIfQcNtaDbSy3ASzxECHVZm6pnmewIxP6J+E=;
	h=To:Subject:From:Message-Id:Date; b=JELPEWtaOeZRcig8QoMA5EL9LT4haNofh5VW87wM8k0t/7X4j2YG0jUQY3w0JOnM1K0HLAta2mC2MFRuXWm9sVYP0nUiv6e0fCLVMjKRbNvJy4pVE2V011H/SJxbjX0QJkdne5tjnB9hpBJ69AdDup17y64mCT1DYFdA3Ck4lnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSL8bdwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSL8bdwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C0BDC433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712382496;
	bh=qz7A6fbZIfQcNtaDbSy3ASzxECHVZm6pnmewIxP6J+E=;
	h=To:Subject:From:Date:From;
	b=FSL8bdwyK0zjgqB2yduuzQPU1JNL/H76oUC6fSlH6Q+b1t9XeYw/aBx6qDrkkYQ/J
	 r+/w+KeKps07pPM8YGPFhtdTsZz/0cr5kntDsKvqZ0Ly2B9PMpi7lyQvfBaWE/HgRD
	 nZLe9LNPcQv6i9uvilQlT/do61LSwEdeO4sJoUtgzn02Kj3wi8S1w+nvVAUQxsjjyK
	 H0IRru8gwVk30+6gvFUbNIdGIZzp9YQdD8s6ToucRGJvhUeG7ZuTT4H/NKyA8UB1yz
	 n9Bj1k5SI8J7f1OgFE+Ew3w9pTDf33ZmVrrX5Y5VOorRJDOb6DDIgd3WvvDzSm3eC7
	 CKepE3RzWEaAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 694DBCD128A
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171238249640.22454.4358822984358958335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa76310e54243e24ac926f11745c50277285a42bef3fd686c004ba15ccd2366
Date: Sat, 06 Apr 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712382496
