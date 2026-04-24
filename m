Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FDA39A7F8
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777028854; cv=none; b=N+hF4rMuDNNJ1ty6HJCIr4IAF2mVefFTZ9FrHWkBlKnDWt0jDM3KJ4hCT5eH5++CgZ2zJ7Zs1e9JAqBtAOy5kfOKFgp2dhX/y5QQV3ku2blRhG9YhDXij7kW/AKkGeKUiFAUR7cdzZvRMKKsxHKcmJH18SwNBs3Fleta9VDLv5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777028854; c=relaxed/simple;
	bh=aikIRugEovkJITKDvjQvWh4+eN3mtcVY0kdDO64IWpA=;
	h=To:Subject:From:Message-Id:Date; b=tiY6wJNUXcDSD6twNNzj5YqZ0ecJ2hxy7JWSTmCzq4SotF4QDSfmYxP1fDSx0sV2r9jb3A5KrX+YkPR6UA10YMcGkPYaP5ksVmTBZC/FNIM6qZCbPcmRz8XWk5BPV6wb9JCxMqYtJHqCtZqFAcQYOxIU6c+x+zncbl5DKI3r2FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXG+6QlI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXG+6QlI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86C6C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777028853;
	bh=aikIRugEovkJITKDvjQvWh4+eN3mtcVY0kdDO64IWpA=;
	h=To:Subject:From:Date:From;
	b=ZXG+6QlIzBkLFptnYvIOAyNAThv1ETM+7KtSB+zFJG3m+ZslZHDiUxBicBqyVTqrX
	 V4JpWHGFkypKPFZ/uDfD/LZnmfH7OfiiAnvgrJ/2u12ZCgcM9ZCaw/RHBsdahYUR+t
	 y+yfmaIrRVllhp1qO8Sq28kpHPNgEZq22JdsQ+QIk/P6PhLFp5uNQ0nH7m73L8lnT5
	 AsKBbUfM1cv+xL8S1x0+oPmWxeLTv4V1vaja4y3FpkgIXnr04zn3EZWj+S1juQscVJ
	 CAFlo1cEMGEoLJw7+mkpQEYzBeJS7yMCmYMN6pWkeLx3hCc2JNeDOmc79bChAFCg1E
	 0TbJebdr614gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92DEFE5206
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177702885368.14513.15689419713339427182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5b6434345425712b233ec1956a75485723bfe63605457b6a632d6e74ff2350
Date: Fri, 24 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777028853
