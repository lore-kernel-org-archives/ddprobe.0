Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD432629C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751116794; cv=none; b=fKeTYrb4M3Mn+oQEqSuZ/yA0LOWv4lgsYb8JyRfsDoxF+lP8QEK4450sVxaVc9vIhbwJLLxZK58By28fW0XtVW2nactpinV+nBSjtbyNQ+hmpF222PKzGEO2E77LHaFoUllfEnmq8dtgE4WdWLW/C8TFu1wYDMgC3CPQlkl/Yv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751116794; c=relaxed/simple;
	bh=IzAEhbS/A7h0EapP56+JiFpBSHmgi06wY8pjJjj4c2A=;
	h=To:Subject:From:Message-Id:Date; b=ceaYa7nvdUEakfjH55057RGnDdj3/2vH4I7pLVBLH0sL4NRnGrqWfJePnFUjIgvjg/6dDNUdONCA7c68hxyov2p/z9rud9M7DJum9FKA8LYmJIFTDP5DLqTVAH8PSKXs+nY+mED09Gn+Dyebw22p1jWtw6wviojg0FYgUT9MQNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hl9i3vvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hl9i3vvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D94C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751116793;
	bh=IzAEhbS/A7h0EapP56+JiFpBSHmgi06wY8pjJjj4c2A=;
	h=To:Subject:From:Date:From;
	b=Hl9i3vvDX3xA3QmfjSs0X/4oSacpXQS0CBae1d8WSr8CkghEnbO5fcmDfvlFMpyqV
	 X+6dsxSu3jEhWorJcn0xX+Vu9SOfl5zeEXZTwoMup28pVQK3dAa/E6s96U6cOLwboI
	 kIQQMUn3tsPp90vnif7JFUOE1nbVh1X7JoxJB/PLlI2uSebME8sTK9clgp60YtvX/n
	 nzFheVRHfa2gYWrEu/0NqyfwgBsVob4ZrKK14hELSUqJAauTy+dNH4Mw9LqnYPwQ5v
	 mSb2tuEUyrK7MJR4DB6YrXWIYjFVsR9STrcB8M++nFSYEMlfIOkaQNWBaBEr6lJq61
	 NrrJQ1aFtfj7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938D3C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175111679358.7846.17068243091235211635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64442d9ce12886350987c84174221b35dc76b9d821ad2ac199961de5aacfbc11
Date: Sat, 28 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751116793
