Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB78C27AC3A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752050393; cv=none; b=sBg/FVbQoEiPlPKneX8VffhYgaEh5UqqmEzqDmdp9GncUMuM3ttcYN/waCRjDbyeM/NjUfIR8p4EJ2VTLLAfOKOZV9ff6ve91KY+9/HK713XTlR3l2ImJ4pXgsAw08YBRHEQ9+z/0F2fyVnkTa/A47qAs3kuVCmG48xCzKgXpj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752050393; c=relaxed/simple;
	bh=OddLgpLZ+uKOy88fEaijhaviFV0lBewZxITV0qJX3DE=;
	h=To:Subject:From:Message-Id:Date; b=PYTPdYye9ezpoYu8lvQBkzo1doB/1mivYzRKZ8QxHe6X9efAsqNBmbPE3ElYcRH5ll96H1obtUg/SASKkkOv4bf7q+YhF5X8K9CulT7AGFSAdqmfJkocspxxNoL1lxDQ/M05DhG50/2k8fL2NzxJ2k8xXfkcWu6JtNl8AotaxFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIYEc9+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIYEc9+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9A4C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752050393;
	bh=OddLgpLZ+uKOy88fEaijhaviFV0lBewZxITV0qJX3DE=;
	h=To:Subject:From:Date:From;
	b=FIYEc9+pekn3LPS7KqacoZTbNgQgt9YMiAki/07sA3hGMKN+nAJ/jSWHzz9yWJe9l
	 n930jReNHl+VsZotiqz4JRDGSS7Fc5LQ1o8EriVcx6VPGhLzvk0qg5N6+CYi2oXtEc
	 o66R5MehAThP5k7mBZ/WxkRSD40LQlU7bnjGMV4CH4ipKW0AaQ6pHu8JFtKI+kMj6Q
	 8oAV+0laPWTj3HnqlcLLptLaGCDoEIRJu3V4qwNeZKRldnm3IxKXTHgHjSVifZNQB+
	 QZeNglG4AfGoEOB0lWOsG+MWI0M5s3Kc0LTRDTGUwSOdZxXf2G8sHAL1HUV3dqNqgv
	 KZHX+ZZ/Jqing==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE0AC83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175205039357.9142.16662376059333605129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb46177fe2cfe5cfa57c6eb2b63e7e524384094ddc1f2de12adfd4be4ec9bbc3
Date: Wed, 09 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752050393
