Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E468B3254BC
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760606394; cv=none; b=eTz/IU+fJqvBovnaqSoTCYPu00DP0jJiFgi4LN4F7+9RxbHtdQKU6Jvb/1/C9ZFrSS7eJY9Z6M5+q2m/14wjU35m9V6VgFPfJTs+YzGkLtG++4QtloM+qa849GWEU5SPVHa6OspL9qoO1tX/CY5jtjyeIDfq4/sWEl4BjkakD7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760606394; c=relaxed/simple;
	bh=TfwuJZ/XAAuI2XTnj4l/wSwPHwEes4I5+8irC4CFdDU=;
	h=To:Subject:From:Message-Id:Date; b=L1NzmijUvF2u4v6yM/G2hA7phhmOtry9kjfSjB4FF2AUZo9RHxv0Xy2pMNmrz0w4e+M1OoVmjrXQOxqFhLvTfx2KgRhIxKWXi02zt9CnZZitPLHE+rKXt7N3Dp41MUPM3GHT0A5iXjV0G/PiSyrMt+Zy0x/KvmM04suOypkJYPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+hh6Co+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+hh6Co+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D64C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760606393;
	bh=TfwuJZ/XAAuI2XTnj4l/wSwPHwEes4I5+8irC4CFdDU=;
	h=To:Subject:From:Date:From;
	b=D+hh6Co+TpUPBI5yZTz1USgulfk4PXbWkC/cHVT80XUPRm08CGnrn9WYGNtqFatGG
	 V9IM9hQnsAGW+YzNRNpbfdd38ZEmydrdPti6jD9Lz+V6gMxt7xIiMd/NTOFkQvr0AD
	 BJVWwbYgdL82USoSWsds3dDwEPK0L3YhooaaaxpfDNZ5tja2F9URe1Y1ici+hk+3Zd
	 d0EMqK+j4Y2G/r2dGTPg8YrzztMSC7ukSarH1cwtbVtw9m5wKx9p/QzIPaLUoZ83vl
	 VQkv5/x41YaOkILfQ7ywaOECBK18zDWTX/4pCe/igfEQznzNRNTNdjuXqAdJHtURsb
	 /IT21gLluabUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93764CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176060639358.10149.2716733782924384130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f36c7111a7b4aee37af6d1316ee267e779d1d733c7a981a1ba4aa7a6d5511c
Date: Thu, 16 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760606393
