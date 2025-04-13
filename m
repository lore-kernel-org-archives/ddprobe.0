Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518241A0BE1
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744549794; cv=none; b=LwhK62Ib+DGmoZUvHkvzL/+5ehMX3a1Y4QUqZqzE0WS0FT8sH8c7Tsfab49oCe5acOBsl3WuHFMhx8LQkd8TPQTg0s4tlvuq1y9yTJ3ZXromPOAVw+u60IneiO6vWLiUjBHVlREoqONJuQIcu7kZFj3rpCqECk8kFO+rAjD+ri4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744549794; c=relaxed/simple;
	bh=TsdKirPA5m2HVwfDwNwIAWCRTkae85D+W97wRpAKaDQ=;
	h=To:Subject:From:Message-Id:Date; b=ZXBls/aIJUWAVuJ5ZooZGe7By6cW6dxDLHaoUxCBtQTr6usbpfNauHW65TrWWIJFz6JTMu2mSdAIqMz1jUYDjKuIXZlS5Mir/xj+RMvMyxYRDXhf1B8Ii8akGWZTMG7VvvJL+AlWcjJUns/UpYpfT5+RXn0Kgce4Se7yjK5xvic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1n/i5QC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1n/i5QC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4D0C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744549793;
	bh=TsdKirPA5m2HVwfDwNwIAWCRTkae85D+W97wRpAKaDQ=;
	h=To:Subject:From:Date:From;
	b=l1n/i5QCbFbqSUI3t8PbsX8OImIWAbtLAZVYtUsGflqDccdKyaFBK3OHGvpiiJvrI
	 3bB9J8R+A8td/vSGQnaW/ZmaF7QOr1hyj4F+l2Me6JMsvmnVYKiL2c7m7V8SuDgf/u
	 fM89e2bLv1oS252IkFysUpmMbzPi+eoZCFyr3QCOsO8jhP4TDOUK8X3HWCbGe34GVh
	 X6UQbtL+PSFJRMf1seSvLIYjeCIJGr/TyROxnTXwUXsP2MPHLM6OnFazd/jdYP0UOz
	 /4MQZH2lA+QY7LWqoDeQuf6v4BWrl7SNxByOhCAZLj7ggXHDlVbXzCZ4uwcVeDef/Q
	 LuLS8yEjWeBwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94090C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174454979358.32592.13593642378709682733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf334a008a58deddd4679e1c4167606531da1e62cde84f825855edaa86fd8c8
Date: Sun, 13 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744549793
