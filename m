Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FADDDDAB
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747744794; cv=none; b=tTm49w0qibpFxRnFOrdsc51l3qYCGF6EhRHM2afT3G+MpQIMLN6dVFqez3IRtj7/mSIoiC7264Zs16P/bL6Xc8svux/nNoovxygUhVglv8NQ338qA01s+QfjTWspKWEbdnze9yg/5+aqlancDhQFEb7/ouhvae9IjWea9JX0d7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747744794; c=relaxed/simple;
	bh=CiRbpL06Y8MsB1+wBq4uQ7VJhSSt2vzdTBUVX4szE7k=;
	h=To:Subject:From:Message-Id:Date; b=Z8vwOxkEbG31oVLGkJOLVifYQIrbb+sALB/4EP9DfTcAYk/JAAHIzhWsBwPyUQ+RpK12FxYxwp9gG0CpHZYWHNW+RtKTvjVmvX9wgIFX8kWsfOjtH4nTPTKebdzgrMldZK+Eh+JFk0U8VSgEfB6GcbcHHQe5Qp3eEZbJN7T9ne0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D88pSYNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D88pSYNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A424BC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747744793;
	bh=CiRbpL06Y8MsB1+wBq4uQ7VJhSSt2vzdTBUVX4szE7k=;
	h=To:Subject:From:Date:From;
	b=D88pSYNYibbHjBwHcQQPcB6MfsEOJ992wbgXatTahMI92yDP8NmIolKFdgCsYQ4+p
	 vORmcZFlj8qMTKbtXWxJZ51Zhg2ztYUKRhpzQMfY2WprqisGAXQOvdZQ9jel7Cnlla
	 Wg5G0jQzpu3U3SG0fX90TNekw4ohB1ItFUpYsNG4NYbH9q3KCGTA6/nc1L06lIg13V
	 zcoKSR/pPdal6RdHknHS+4wdM0sUtkx82UhRR3Y/ANOCaO0K/5lOyjpjXkELZ4WO8l
	 2G3lZEnELq5BfMIcQPsCv2s6wtLaNKQA6AbULUw6ql9qgEjZdoEfPaLtPQti2HhPb8
	 vkHuUkCbU5Ccg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912E1C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174774479358.20682.6687472973889285661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f6dc8d54d95f41912b6f729da2618396bfb0489d361a3f34e80ba0bce15840
Date: Tue, 20 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747744793
