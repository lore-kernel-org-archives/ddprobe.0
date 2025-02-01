Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3861369AA
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738418154; cv=none; b=UPrInmtC3pNHQaxZFeLh20hJ/PW8aImceDLfH8v8+M64W4lsMv/aHcJAVMZzTm7nQ2ouZSGXxb60shE0Ccgbaynd4q5rVVTLSSpobNaubsru3KWTKc6CcxKrU40cMASIhFNqo/QnywA5B16sJUTYfw56NGyvEkFgS0Vit7CtqfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738418154; c=relaxed/simple;
	bh=6A84Kq8f+kP9YbaFbozAfRWsKO4Yh9aocRbCM0EWJbo=;
	h=To:Subject:From:Message-Id:Date; b=nBiSff09jsYm/jUAVNjzbi5NvjMfiNv+UgX0p3lXVu0E38XAjn1cb6I2ELrL2qenPXV8hzaNHi8G7fkVqKfUHE0TnJEco0rCMhKcBfh3pEre/kgwVJOPj9cPrWkX6MJOSOyp3E9cTKZ2FXFS2AJokcyQh1b7BStISZPOr+Xkc4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQ1MzpCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQ1MzpCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9AAC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738418153;
	bh=6A84Kq8f+kP9YbaFbozAfRWsKO4Yh9aocRbCM0EWJbo=;
	h=To:Subject:From:Date:From;
	b=TQ1MzpCmwPux0Dk17H01lWV/IR7Ai9NP8PXAqfrRMzJdzCH35vgxCPRQewhrHHms8
	 H/u/9tQkaYJegP4cQMxbe4F4EioYOphxPTg3YYu/7wgqkMEdCaQ+uYAMNvkBOv8Z2h
	 zTRqZG+lz+NBIq5KvNheYmOIvG8/f7g8NIbDEldA0Hc2Z7JLsjyhi+qcAd5RigTr0P
	 rXb/hKOpzRFywa6QCY1obyrPmGOyi87pQAaEZJz9K03QlHR2t6JHT/i44JmeQ8Ioth
	 NSlNkoFmoShHCvronf8RCAYLH5frJo4pAeHj4bmvB5hDGUhedgd1gwgQtW4Z7cv1qx
	 LRBu2MnBJnF6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98954C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173841815359.918.12566052079107908344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9caa304f08bc0d7b3d56acfd32247f861fdb187ef5320808a0912c195a14820e
Date: Sat, 01 Feb 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738418153
