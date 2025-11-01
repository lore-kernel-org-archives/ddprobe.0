Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33211BD9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762007994; cv=none; b=uxeVwnsBNVjuS4gvNX0720yx25LPPwXaQjvy9qJZg5CvbKjQrgkgsmstCM9GM/UOgtC9o1/rr7zph9YEcfAGJ0211l3N0YXH/mcmii84ent13k2RhJYjjIuAMkw4EvFgoVJLWwvIVtsx3fkJ4FrjgDkp/Ac1Tgg8GP666d0+s2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762007994; c=relaxed/simple;
	bh=DoWitdNlR0uugQZnMI1w9HwgEv3r1n+92db0oNxFJl4=;
	h=To:Subject:From:Message-Id:Date; b=sClw0FpuuCQB7/Smm9pgWaQ+bXuyKpjSWXoECDUVDj6WeRV2Fv5r9zfmnRAICBrQ+uk5XgW4NwKATVPCF2n++hFv/FQbNqC+KKdnAzwNPPcZ3LcSc4PSdb+R9JPX+czWMqT3AL2aZ4mc01raFiQ+2ziyf7AVDR5Xy2VHjZz7i2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etHGLGvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etHGLGvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DA8C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762007993;
	bh=DoWitdNlR0uugQZnMI1w9HwgEv3r1n+92db0oNxFJl4=;
	h=To:Subject:From:Date:From;
	b=etHGLGvpvY+OftpJccpNyLubTuae62RiaKJ/Smj1C4DuXjrxa5YwwhuLvUhCfs0Uu
	 P/lS2mMKzdL41E4t+Bm9aJRubVysjisiTU4evHkoVHbUGPtBOCMFTpcZ43ZqW407s7
	 bCNlZyUwA+CRkrQ77KW0Gt6i0mVXrPzz4nT356Xzhvsfcww6VYcEMPYCKHgKX+Juh4
	 yOpkJWHw1tWbBSUA50XOehZHvhns73UsVfYhPu+CmKG8ZVHs//t8xcIdYgcIX1JUGw
	 uyMFWve76sX4QS1uBQh0LZohFCBQJONSXClCEjzhSQcyb+CF8JX2ZIm1QV/msvkvDI
	 f7W4SfnziJjrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91709CCFA03
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176200799358.27171.9421582059334864169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecb387938a59f74b1399a24c87068093ce6531e1ad7c58586c07a55135c08121
Date: Sat, 01 Nov 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762007993
