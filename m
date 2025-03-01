Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3569B635
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 07:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740813534; cv=none; b=a+jgkKee5+uoqe8oE5SXqmxZ4onOxn7QeNypuMjlTLu7us+hAJdgQhcy5fFSZFIrVIs2zOPeNwrOjNdQizClKK6JOJgujJT2bx4LZC/YdFKHUhS6u/c/MKQ3dlGYgmzmWycWqSXXnujAl8mc1AKu2RfzMRZ0ZjC8pQ5S+pDeNVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740813534; c=relaxed/simple;
	bh=wjGB539/l2mP0zyx2LW2bjM1TCUMdKdyk+BY+/Jfhfs=;
	h=To:Subject:From:Message-Id:Date; b=Ctv707vPUaxNlfI/aNxq6pWzNljtoCStcs55AEBjJnySG8REUTM+i0yldbrU7Yx00CmvJ0CgUHemxO6LZjU3BHO3wQiww+ZLWoAYasEScxx5J3r7rI/6Ma2un/I2g6c1Slz1Zq8F/6ep0eNGOGGemcHwa5qVUwxzPnnd55rNooo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icFyoTLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icFyoTLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A555DC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 07:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740813533;
	bh=wjGB539/l2mP0zyx2LW2bjM1TCUMdKdyk+BY+/Jfhfs=;
	h=To:Subject:From:Date:From;
	b=icFyoTLG/L4UcN8C90p3++TAZdCNMPftWZ3cIAd+p8bsgReXqXWFNcUBGGdW4K/gO
	 nE3hqUKdHyG1uT7QZVFraH2Nkd8o0/OMnhIn2YB7K3i6SP+N6P978TEUsToIqYcayN
	 S/v2BFvMpTKqaYwMrSf9wf7p9ZyxP6GUgmstK+WZkqNdHFDcB91Az5CtG8sGvGZFpv
	 OjTfK4SLFNDNtnfVXqWWKqs1fHECInjE1D20xAVk47niifLeq34/3mzZSqJ0Sh12Q0
	 HGdtiIQ12dOLWvVnBhzMRiQIBvCXoByNlxmmkP/VxyLt8jWQZWBIpwFer0gzz4s5gQ
	 7TwTG9zH3K/rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918D4C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 07:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174081353358.7879.5416966206503862932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e2369090251346299c072360e414568fa21fb0ce8e5dd977f8fc650e955dda
Date: Sat, 01 Mar 2025 07:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740813533
