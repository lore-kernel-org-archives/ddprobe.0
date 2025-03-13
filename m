Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA7E1F3FF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 20:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741898934; cv=none; b=dNixuIhQW9/2MBVuzavEVNb0Jf49nvT1t/DmAYsJF+J8793OhrVFnqBcuEsZUYMDWVFzyB2iuwh5h9Je6Jc6N9RxrN6z32iKZwEkOVGfyBSVjiE+JIgn/DG2Gc0NkAC4D3H0UWdBDf9ATBWdQpUXRFCOTI30x5wjKrJM/xu3B58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741898934; c=relaxed/simple;
	bh=WpsqdLeXfpKHExCgNuYPEYdMH0PMnm7xnMlahN+Gx2E=;
	h=To:Subject:From:Message-Id:Date; b=e4us+nG43ebyn4fVOT6RIShw8dSltVdTPq2YimH5awuULGEOLDuKLQQMuqGzuRBpbex5ffPjKFqioJBF9j41FOQY58/PxENzZXg7wnUP9QQc0s8s4buGTbtzYHXi99LhSN0M+O66LzXV4iyH4yZzUI2cNcZPmfz7O0v7T5XT34I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dn5Mv2Zv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dn5Mv2Zv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D32C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 20:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741898933;
	bh=WpsqdLeXfpKHExCgNuYPEYdMH0PMnm7xnMlahN+Gx2E=;
	h=To:Subject:From:Date:From;
	b=dn5Mv2Zv6y2pP9ZWB98iMqlqoLJvVIhQIxRV5qKpmiokgOZ1ywyAZyVTdzlNGV4C6
	 lYJ7dyHz7KFPRgpz/BX9KdJ/+FKJinkHTiHsl40AuGbsFNvyEBnAiIfIo2u9PW+xwk
	 +RbWa7NB9Lt1LMLk5EaichGHyUPA0CVQLtKlYcXU53PXke0XK0k7M+jYTy/A5GjU79
	 KgP1gR7EHLZ+51zbw63Y9dqSNEwxye01u2b/IpKQ9ACIqu+lzTVHXWvAEgzKKETD99
	 mG+cjavGaSQiLzq4mPyvG+ImQByBqaT06uw4mUmgyetvMZ6DI37FC1nGPNh48/Wax4
	 mJN469agLAIuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936CBC35FF3
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 20:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174189893359.7733.12121291446644397560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687250fd387f76b80680143799f714b71d0a8b305e22c87daf5058b041091489
Date: Thu, 13 Mar 2025 20:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741898933
