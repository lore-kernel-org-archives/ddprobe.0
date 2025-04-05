Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B4420311
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743842994; cv=none; b=mfQf1suu3t1L+ChsvnxpXm4HjAdwmlnQF6OiWDE5XxDk8aCCGYr97MxNqFl3skshCK+aH46DCPKFKhEati7RFUwJGy8/RbVwZLEAo58Qd5LGWmoUJwygMbZiDsp3+7GFbtBPuBlfI7xFPTKwst9ha7uHvo8wmka6/6hCuyaeVdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743842994; c=relaxed/simple;
	bh=f59lblQEXtwdnxSnDTiWiY4WJnpBNY1KYV4c+ENbQXM=;
	h=To:Subject:From:Message-Id:Date; b=BLbgOIH50AYvHMGKKJJbGEH8/GKnxJ1gRCAduIlq1BuTjkdNfgrbbTeL0BeZRaLJgV47jdUNUfiD4YxFzWs6x6boQxXbFvzNoIp7RA61G3g1/S5FZayqsMhaxLtByXKMrcMRnKOjEFVTKyPNEmNaaktu0oLXzzpWNJOWW6kOyRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8IqvKWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8IqvKWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B9BC4CEE8
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743842993;
	bh=f59lblQEXtwdnxSnDTiWiY4WJnpBNY1KYV4c+ENbQXM=;
	h=To:Subject:From:Date:From;
	b=d8IqvKWxatP/i72Urr2Yo8j3F85BztQxIRvf53QYHP6bHUpXjN8qPO1XPRk9V8X8E
	 18DzwcCYQBXXCJWpFbMlwtmGsMqyhxcJm1yEQI75k3Nuhd9vqSs7uNMoTM8DvI2xfp
	 vdk8POok04uZ20Y81EM4nKTjbfE+LzVCaj+m3CZoN8SYgR/C7mvrrRH72epWgGl2UW
	 rFfslktdUpqMlUvGuqAPVXfzkQvjn7K4a0sT86EFiwXnXgSvF2E/3XRdeHnbkJTBC0
	 On6DFOL2gE8sMeYlXwt9kit4hWgx0E0ADZ1MWI8IkAw5tfr23J74/8Mm7MJR1cxKdp
	 Csef8BYqiz/bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE9BC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174384299363.23729.16671602359963344324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e0f36a4ad8ab3cac3946f65010f3d80ab0015075e0ca54b43de92eabe98844f
Date: Sat, 05 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743842993
