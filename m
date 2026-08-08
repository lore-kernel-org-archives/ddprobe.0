Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CCFD2ECE91
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786175434; cv=none; b=UCy1CiPTbtqz1FzNLMxk9tfn/vXpkqB+45M9lCdVv8EhtjPcDVF4CaKjPwUyOAMCdUmbDoroLWNhuD+6RL4e9OOIc1HBPgBSjufTY5j+b+ZDUtw3aEB6ik2/HBiYKf3v6ApyiTnLlrzbzO2fiGJKH7T5MxNQsVjfVAngCr7TcBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786175434; c=relaxed/simple;
	bh=aLfGSJBl9E6vVBeLPTADZl+6duLNgQYW5hlbiyGeEJ0=;
	h=To:Subject:From:Message-Id:Date; b=Rnl7r4V/zYpy/JwyIQgUCJREOynDONsfSU5007eFrE9QHUZbrFC3Cq1wzsp9HItkl7fK1pef9yPOjUwfga3XJCCTEm+FyQSRlzCUdJYpUJL8Zvvry0DkprEPfrKC1dPMhNK1WFrtJjdEtM7ek21a/ojqHh5x/AV8XEwm1NEkULI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUDmek4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUDmek4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE259C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786175433;
	bh=aLfGSJBl9E6vVBeLPTADZl+6duLNgQYW5hlbiyGeEJ0=;
	h=To:Subject:From:Date:From;
	b=WUDmek4zuq+EpvwGCbKf+v9/XUrwPUM/CFuttHuBkLcUjo6MdQ4jDXTa7K/iKJ2r9
	 zPgO4A/wMaI/rUmBldlQ0vJWDSi1xsm863kVX65ER3j9jHgGAiUh/991uTV91MDIn2
	 AFfLY93ZDOtP/tuxeNRUJHxY8BP+ZXk8OvbNhzRKa6cj2fdj+HxWAcr+lj+3zOddjx
	 IC2QU43H/woRJJJrk71tit+U/0QWEVKEa3d1CnCAYXXm+iPFYAAqxVlIckJWKU8TON
	 3lav4QHICiKflqeY+ys9jVq9i5ezgIanQOGs/bFiP97ueZr0Z2GtD6UK/xoClbUsjt
	 /wr8pNQ/aAaOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32A3C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178617543370.24808.11164272335226056509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18578586d89f0ade333a46d247fcd4e700851bb7fec7db6eba014786058cca14
Date: Sat, 08 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786175433
