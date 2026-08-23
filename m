Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F809320A14
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787494234; cv=none; b=tRYL9XuH+CUeXX05EqNvlbdWiUGAk7j5263rU2af6oRQ4ZcQJHp8cQKP7MGPP1tfOmZmsmnhsq6uf8cUGfNViqb0LTzdy5KzhC9UZ2EhalRkmAJMLmvKdCQ1+M/n5m7XlA46CUuxjxlpU0lKuqg0kUQmQyCaZPEqwqj8OsCiKPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787494234; c=relaxed/simple;
	bh=8m3ZP8ECinomEYOAuv6FvxoYtttc9Xc1+y/HZEitcNc=;
	h=To:Subject:From:Message-Id:Date; b=JrRizYN0PQdIQv5iuUw79wm8LaAsi6ZsMVHSPszmfkY+5OWuYfG3G1Z7xlansIdvEJLY7Q1AV7AfRvkyYYrBY6KIhBJqNpoaI4gIEhlocHJLxlX6duJNblWiUhInwzA8QjTreLp34dJw38RVkBfwqHEbXZ1szwGvW816ZzkFbZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0EzZXjt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0EzZXjt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A20C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787494233;
	bh=8m3ZP8ECinomEYOAuv6FvxoYtttc9Xc1+y/HZEitcNc=;
	h=To:Subject:From:Date:From;
	b=K0EzZXjt/7b+3SM7I4Np9BJBhvaMDKHNXQ5cbFby7I1qSoQj1vx6KSf1I10glZ88q
	 WPJWdSKWYRGJfI8FC1tfieP7riAA8XB/vSN69AOOs6+DxeRRD8DxVUG3VGxQfOxRHQ
	 eUMyt30HpFPC9g152BsPmVZLvIyAZpjCXx5zRZ10hBni5PcZ/gCHgp1x3QrQXQQAIE
	 g9lPctDq1Dh+iuY4KMZT1Qsw0O5FHOYKrkyUK3VD4eoMEY75dPLPQ2PFHIk305a+tp
	 +tZg59wJiG1lEkE/kl9Tu/ffjuuz9ArMMl4Vxu7D3+qI+ieqn6cwgqp2SmDDlMvOH8
	 NKV30GBOoGBRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD431C5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178749423368.18752.1328096217748786774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e616be9617c335342fe162ce23d6c68932352190c1245a3c95a8520a289a0c
Date: Sun, 23 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787494233
