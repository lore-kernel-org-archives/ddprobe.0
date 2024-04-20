Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D1910E9
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 11:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713610823; cv=none; b=C7JTPiNY+/0BTZitqMCzGP/d0HBsGFgk6p4CpK/h2yz0r1FvyQtHxCn5hNXfj6cE3/j0NcgS7ZuUfrMNUNGjbECOq6Z84B/bf6gPV7ONo/MRX0ldZQl/VKEWAGkl75LHxKQPdFu22Xar24y7tp/26FUOBgmKQmeba9AZ1l/Jo5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713610823; c=relaxed/simple;
	bh=RHxgXrdv26HuZb16/OJMUZ/V3OaR9GnMRmp4kfdOpBs=;
	h=To:Subject:From:Message-Id:Date; b=DFafdlW9X/gY3t7oFVaRGfpHxbKJEAjw7B4eFXsKRxyCnwtmqhcPkhnU7g+kbtYjhJ+BNwmtJsAbiLr4jzJDqLMh2cVYprFb5LTICv5uWE4FnfyEs3diy2ZjYBac9y13ZRutFA8eAq+R9DNu7hZXhoWmeC356ZTd0PCn15Clm5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYtct1gv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYtct1gv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0EBFC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 11:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713610822;
	bh=RHxgXrdv26HuZb16/OJMUZ/V3OaR9GnMRmp4kfdOpBs=;
	h=To:Subject:From:Date:From;
	b=GYtct1gvYQ5PVls8QucWcVCNnUNTAPyoqoHc81b0wR/XnZ0FzvFZrqWZMat16Gpf3
	 jnZgZCveW0OgEQ1u1sEto+11KVZcypRE1AU5IHvDxjEkMJT8U5j2N1w1fL8aGrr7qp
	 8qsU6tBzt8XMgbEvKbAX+9C4RmLlmrYZZMrYUq8ffXLEkV74jom2NU+QdvuUl574Vz
	 iUZtyp1qcthEUoT0IrM1Nqste+Ct0L9zMnRo+5dNFNiXJJI6bgIYljbh6IbjOeNa5f
	 uRHZOiCSUzNXw0X9YaKhXhRAW+fU+AsIk1qFIeMtI2PWRbnDUsrmq4MSuEjWUKkN0P
	 iZVOA8mQvIbow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEB64C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 11:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171361082279.30581.18274679181244099218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ee3a1134069999be5f177cbd2ad466d26e7d907459db7b928d0c1411fc32802
Date: Sat, 20 Apr 2024 11:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713610822
