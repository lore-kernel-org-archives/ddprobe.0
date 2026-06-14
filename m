Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643D838B7BD
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 10:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781431594; cv=none; b=brOnVk/Rh7GKC1arGJs16Uz0bXS337EVTK5c1YtIjeMrFCsXqq9mLpsSR6uZ9uNsnOG4lsOKYP8p7Y8aVLdRnx3o5X7DNXnjwxTrJzqBJJqRB8DffV7H3ZJiqmy4bLXqIZ7VLOsxXoSif7w7tMcL1gDKCDrtjONg0vpm/pFVrKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781431594; c=relaxed/simple;
	bh=I1rIgtuG07SJqM/mYtyhqdIc1SerL5G1A4Pdn/s+o0A=;
	h=To:Subject:From:Message-Id:Date; b=rYYJIMVC7YwKgEpzFa/epMq290dF+L06q3gZAN05T0YRNh8FoYAaU3CyKJy1QCBtZaWEBOPacVOnS21G0jm4G2P+peNbPRfnBKdRRe3NZ2qQjuEr/FjTxKwkDgPEwmBe70C9clrfFIMGpEQXe9LnTM4wD/q2BrJx/zBcF6N0h9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FekXTW4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FekXTW4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB5DC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 10:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781431593;
	bh=I1rIgtuG07SJqM/mYtyhqdIc1SerL5G1A4Pdn/s+o0A=;
	h=To:Subject:From:Date:From;
	b=FekXTW4dW3gOPIEMtjlWiDnxj2OefLdt/PgqZxWpwwf9CIqOJDZNw9T5EkmYJhbk0
	 irn2pyQyeOl515RawUaopograbpVbCXp8tnbOPlN5/XJeLzJdaAAFDhYE+Oh37g1QT
	 XzVO+fa5whLKHNQA3NRlMr9aN1r0XOMYNpHwT1GPuIPPBKCcQl1UgD/ICGMLlaKyYT
	 tWwVOK8Yxfuhl32yhfgCJQiP4ZD6r8QeqLCJpzlnsvC+Do/bRrFhFcR0PX/RAKdvFr
	 YnyElakWfVDzrmnIHNTzxYuJQuIcuK8FlyHlw4RyN0idj2AeVEoSi/kYtM2IXrAMV6
	 qRuo34MFYaYRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4EDCD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 10:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178143159370.26374.16932813410717895523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92494ae2d31110a0e1294ca9f33a1e639adc863dabd67f9fe6a23e765efbc9df
Date: Sun, 14 Jun 2026 10:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781431593
