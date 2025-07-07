Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E3120E31B
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751914794; cv=none; b=jmtl55nW2chwUjDENjDstPr2L0OBDNcii1wn5hdfyRWAhPuQSkXzs03weOi2IKnyULEiOX/u1PeAUrrKzJ4mo/BVjn4GeQfOIpsRzsOCMFvQAHu/JGEVS6BUFC5vErQQStpV/j0y+7W7NiPE0UmZtxxkvPWHAGdCIcJRsxX64FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751914794; c=relaxed/simple;
	bh=xamowvqV6Mx+o1HNqQ7OoNjJnM3iVCtvlXh/7fBAxuI=;
	h=To:Subject:From:Message-Id:Date; b=ruptdxqfUnZ5alYnfgXXoIL3R7Ja+oBxQxcWFCedTN8A1jeJqvs7JjzsW0ENjjcon6GH/6azmgKwAnnd43z9Yxt/KzYRMuLaF9SlEKqVR3r5XORISf+4LA9Z54UT+zM1cSaB8A+g6fylXaYc1sx7uEpz6FBYZlms34bi7WxGyyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzX8fdRK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzX8fdRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A22C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751914793;
	bh=xamowvqV6Mx+o1HNqQ7OoNjJnM3iVCtvlXh/7fBAxuI=;
	h=To:Subject:From:Date:From;
	b=LzX8fdRK+OfRFNEY/kkLMQZyMeVMQY+7b01gobPsMh/VVwQBNzQWkcwhesd1yL9hG
	 VpU4o5GsyLn/DNjn+u+LZwCiVNNb0u1QCqWjfFqTEVyefESKJzp6B2egr+guXDJPwD
	 GLeL4Y2xwVIJK4BlWe/TUUwJvS6186wXdJOCtazZbSY95MgNPb9w1cidTkbTWgzU0O
	 m2HI+zj2fziTVf6DjOxDnJpVYoU5LTGte/7RepzJ9NBlq1XZy+JaZSSPMEpbAwiQov
	 S+Lk9jkIbsTW39cuX/9kfj5NKkzIFl0/+4WfFeORJaO0xsvlDTKFKC9HHwOd7FcRpA
	 +2klD4OTNMz/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBB5C71130
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175191479358.10723.9480742677234623578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c034e32341ef6fd61bb4439d0c9dc407d36a757ff1b6d20f55b819b97d1cedcb
Date: Mon, 07 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751914793
