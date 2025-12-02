Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0712F1FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764705774; cv=none; b=IuKnI3GDm6X0M05LIwJrVLT+DBSjMK/i2jL+bPhKrnujELaPAEEhiyOOHcpSxpb8Nvm8u1aWm3+1UxCp1DcbjujrFX00+CN38EGk5h8ZpKe/SiYPcBw5Jf8WsdyjXh2VZ0anw9iBVnZfQm9TO+cNT5RiWof9p3Er0ti/BhNyoaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764705774; c=relaxed/simple;
	bh=6oCvjE+T4U8s5BKFzotnSaHcWWtoHHrE4Ry16U0tjoE=;
	h=To:Subject:From:Message-Id:Date; b=gJu+PwjDriwd/6YrQWfG4hbj/brtnuXZHXr+h+Tlaw4H2sBPF70lT/4c9FY35MXhYks2EI6Eel+jdUGpwRqQSDHJNF0JMLxdTobYKG7ENkguWbOKOsMQ0Y2i+pHIeww95P8gVSqThVdVpS6L9ORS/fGd28tofoBpmDmZcEn/7Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNHl19z+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNHl19z+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47B0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764705773;
	bh=6oCvjE+T4U8s5BKFzotnSaHcWWtoHHrE4Ry16U0tjoE=;
	h=To:Subject:From:Date:From;
	b=YNHl19z+qc0sJCRDOt1AI3vP2gj+o7eo2m/XtSoMKkkhx49+aJl2xp30dN/Dm44/B
	 yZiIDi62ZTOhkvJzEmtR1RsK2S1WXFOFSBNozBCbwBI+LwRMzLwGGwhklH5BzvEl+J
	 EusDHcnzWyZJkwNaJUpXgV/MFPRMKjkJ3LIqkN8QQpkCAXESwEKL4exq8C7gG4rZza
	 VeULstsRXYK+PQndaFmk3O7V9NNchXLAngDK8I5p629t9JNUwqEK/0GRMiKhy3Ct2x
	 5+tBh8XkHOmUtBUhagIc4L1smZW3ua1jRMonLh67xMyhjEpVFVxqjnjpidih9g039N
	 gu/e2KJGyLeZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EE3D1266A
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176470577359.13156.2303149973569266363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d57bf4820367ed72768aef0f319882bd3a12367567acc88a31ecffbc6d943a2
Date: Tue, 02 Dec 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764705773
