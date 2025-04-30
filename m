Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9031448E3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746022794; cv=none; b=IdxvHBJ0QtsR0p3fZF2+/2aIRM9vC/lZTObGmsqdcOT43hQPrd8RxEGR8qdw5V50cdAzxvIj3KiEQR/PWdXFEVnknF0QpGQMARXD5+Jcs5RZnUrIecbJl3370CvW1g/RmzvzWR1mfZXI+56tbRK6Qlfsr7qDwIFrY8V9YzHysK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746022794; c=relaxed/simple;
	bh=iDx9fDNYUnmX9LE1QB0U2NWuHgVVwe7qFCIJUuSYKVU=;
	h=To:Subject:From:Message-Id:Date; b=TJzcevBVqHXuLVJw9pybEHCNwStzQCnxYvWBwLYXsh3RB4fF9l0zGjE+8rhP+0+vy3859DuVohM2c0ioKuXfmcNmMeEdRSegcmWb6OXKWgbZYYMgvvFzCGinac8mtc3/VjKLtyGf5ojflxOnPyy22TiDGNZV7itCuZATWfOktHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBCw5T/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBCw5T/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD8BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746022793;
	bh=iDx9fDNYUnmX9LE1QB0U2NWuHgVVwe7qFCIJUuSYKVU=;
	h=To:Subject:From:Date:From;
	b=ZBCw5T/DzWWs88wPZGonXh3n3V89ub7fPv8qFGDLtGTJHMg91BHiYUk8NCwKETzsO
	 /qveSWbCvtpHTotuS0aXZDl2a4zLKbpcK3roDohTwjbb9fJkz83W7OzLFh612kjJJv
	 QsXNXJRJmeOK6EhfdGT4sTWiaQvEWeXM4WkjKBA8xZqHj10KNScK4fG/HUOG/52ERK
	 WVqau/Px7RlBOJxnTy2quqF6nwCVCT8Y5NytufoZbSHlqFa9TOvMYnQ0KexuVhl9Gt
	 cKUZrhAlLXCWQvJr+xVDk0NxbHg5QDXIcCEtUxWffz2qPoehEHLaqyEYhzejAxNua+
	 gmhbxgqzNoVmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E475C3ABA9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174602279357.3301.4211964812391499047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f46d0a2daae66a8c3080c3287704aedfc5f923358c8c0dd22083fbe9e2bb5f0
Date: Wed, 30 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746022793
