Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DF02135A4
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747562394; cv=none; b=W5uNPxPXRhqzCzaE4niwvhOEBGjksh4p8Xwxt8Ea13lRQc4eHNSKN+hOad8ebBKC/Sd2yJ1ynnsnr08Pjr6NidSudFOxKIuxpE0e5lQy44bZLXhYDb5xjaTYMu3DhkqcTnSsb7DK4/ZMOlpQH/9Kt1DECDKGQV0o8JSNJnGjzVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747562394; c=relaxed/simple;
	bh=VjXlQ/h2ShBYhGrrDHeXzJ9sq8bTcC1901OoQhczhHY=;
	h=To:Subject:From:Message-Id:Date; b=fZ3txPCzSqqLAcQCJfvlSyoAq9NUYsvxH2rbWPRc+eaSGD+Or40aFF234ojmxxEi34X4A6crqzd6G/UXwL04CblJfHKJ6nomDbs1Og1RovhpLjjaH2ol45IFYFbvc1Hhudxdiv+MGJlufTXVsCV0VWC5rI/m/w22UQ3Kv7cPN9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSJDGqhv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSJDGqhv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF68C4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747562393;
	bh=VjXlQ/h2ShBYhGrrDHeXzJ9sq8bTcC1901OoQhczhHY=;
	h=To:Subject:From:Date:From;
	b=uSJDGqhvGlqHOqvhvR9QMY7AxU+5NZAE+89Gsg2sqO4EEADv+JiiftXUK2H8MknzM
	 53xcBGvvslKHHXcLFXcHsdNNRNO94sl2HYHqMz8BZ4D63Prqziz3PyhS/+1uD0p8cQ
	 p11G3g38TXNe34feD4+BrT9yRAuE9VQb3zyG6bpDBxYPjKWImlLx5ROkvQ8In7kd6g
	 Aqx2fWGsVHmm9Mj32dR59Yg7ZpznDjxcOKGju7G1G0GK7+kmpumTORoaxfji76FMZG
	 MEc8kfuK+zLnp/66vV4NrIyan/yH89vcYxavCZ/uygfTpP24jdAGbjiUH1bjpomOCT
	 QZz6W/HWrGXYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE83C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174756239357.27768.13158938385076476121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de73b5d110927a095b50d0ec231b59525362dd48c0a7131c9c6881af10883f2
Date: Sun, 18 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747562393
