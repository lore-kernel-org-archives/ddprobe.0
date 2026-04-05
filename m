Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757871339A4
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 15:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775403334; cv=none; b=rWhh8kEAsj38QuH6Tv1VI+HortyB8Erwn5MoQgXiAInLuRkYJ0Ksy0/tk9CAJ74vzj2dmyNH6V9sHKEj7hX2AdEd4KenOGHJ0AKtoMfnX/MO7YT5IaWtuHzOpo5W7RXPfQa9x7NvYkst7v4HTGhj9kl+VRk/l36MeGvw38Yg3Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775403334; c=relaxed/simple;
	bh=5fKLdnqAj1rb13Pz+Xgx/gH4nJOiqCunY2N4DU++Mx4=;
	h=To:Subject:From:Message-Id:Date; b=fLrfBTc9QsHYjdv4xHI78izSfysLqpLOFsn4b4Zq5xJ5z34UXx11sumHIjlCzVNUf/XwlHtvqQn8QuRWjS9wAmg/VWDwjSYdfA4r1OaNWuckrVSJ9LarkiHtKEZir/EKzUsT2OECITT7kdcI0nrk/SgA7JkMCf8aIpS8NNHd2W4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICqOKJZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICqOKJZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07E42C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 15:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775403334;
	bh=5fKLdnqAj1rb13Pz+Xgx/gH4nJOiqCunY2N4DU++Mx4=;
	h=To:Subject:From:Date:From;
	b=ICqOKJZbvQDQeDHDFXaZLi4C5SXQ2yYstUV93bo2eM7pUd72P/tReHa5DIwntY9vF
	 pJboNNI2GXAXCTCo2+urYIUN8nVm8XuOTRgMXhyEyDaBN6gmVmrDyvbmHup7/JA6me
	 EGGOPXFBlheJb2i68h/OUJfAfLTq+Be45ezyMQQc6WV47mtBS9Y6CnEDA9hChjxIpx
	 JT4t1gPIXr6KN4A+0+n5q4iSXROp8SuPPKkxdKN3ob37dL5TZXCrSd/UXLeX6cAfMk
	 hmqqDyZUVl53Ep5K8OnuMiMfP9YRE4y59q+WVYD9Ckwsp2sXquHAve4Cp90oaiJtf0
	 XljjgynKIWSFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E088AE9D809
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 15:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177540333386.11012.13941637813020780435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88268e1fb809fe5ef965b414f83a689434ce1473853a99b3e8c6e5de204600b
Date: Sun, 05 Apr 2026 15:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775403333
