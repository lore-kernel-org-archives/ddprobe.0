Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC071A2658
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744842594; cv=none; b=L0Cz+OsrfbFzsbxTnfwgiinQiQRqBTgeyt6mLSuVCJ0xRMbhyCb1JIgFnsacL4MUu/HckEVjTMl4xXL5sKlFUVU+P+8zCzlyD6YCtXQAHm1LoUmBWZznQQDUe0AINyxP4RUmy0X7MY5VEMvUW4t3hWQr/MuNUB1A11ZCX0CBIDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744842594; c=relaxed/simple;
	bh=USyGCWQsqDjm+2FMbqiSDmreEl5R5jO4Yzlqof6EVV0=;
	h=To:Subject:From:Message-Id:Date; b=eQgbxIpllFpMYZgpYbyEolX2akXCGmr0B0fzG+bObz+KVOPLcoPEdDGweQlajEHBCiyTJ/2gDIuUJZppnL8Xt/L5c4vszlS+YwRBFVU6O/A6SOvE734bo+9KWgilocfS+SLxqpwU6/gUkGa/x8Hsdg3KF/6Ax4Lu7GCzK+TlF90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWeHRuiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWeHRuiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFC0C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744842593;
	bh=USyGCWQsqDjm+2FMbqiSDmreEl5R5jO4Yzlqof6EVV0=;
	h=To:Subject:From:Date:From;
	b=tWeHRuiUXAAL5Fzpg5EAKvNuKH6xNXEy086AhXChUbvzEtXtfcQa1M0IxZaYlCiv8
	 6vTZWLDMfiyu8tu496eFqObjDrSYqlCJ6f+vf6q9qBXSGt+tWtmL868OG+ujHaEF9y
	 mbI5foC5viaDTNrQDANixTZMbeetWievqoGNGDshXMd5aUCbIvYr+vf334kNJ6Oy2s
	 luSKuBOpAqBEhdJy2/8nVNfwWR1o8OF0xHimyLHOtuz1qODPVjJnngJMeh1OznZWyy
	 hDBQZCLFGVNL2WNvQ7j7P6Qi+/2fqnC3ECg5G9D69phHf0k3oT0LxWKjFkcrS9wl3/
	 37gx3aDH01hBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97974C369C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174484259361.4642.5062591498789561025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe0acc5297e5b0186fadf3c5b5f9ec4be4734fbbc545719b2095de154309fc3f
Date: Wed, 16 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744842593
