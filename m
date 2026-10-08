Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5789834F46F
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791442834; cv=none; b=IzhIZg1Lizo+pgisXvThf7ia658CRz/SB5w2yXj4AEJKutwNGXYBzP+aCkbKPxTsjey+lcFJZWgjVCbmacSlVtLIwKcNwfq9X0d9anENDK+AnmrCeqy7hVBNovvYxTKi7jSZ1/7+kUy3GtKjuxLAIgQlzpiyxvmTqZtCDUCWqg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791442834; c=relaxed/simple;
	bh=XqYUkCH4hM4aqVIBAKJXuehVlvuYKF2Ck/LLcmg9d5Q=;
	h=To:Subject:From:Message-Id:Date; b=ftGGFeKhWPeco0a5fqCg+KGydtLAudV8kVk2HMnnf6GuQJnKsmGJ6U1CwSAJZtEwQJAbHKjQ9BRq8bxo67694w1wuw6hCpudAqOIjcoBdGkyMx5NpN9oo9BXHQqB36a3mAu1zt65Ool5MEsj2xXz5UEP1F4hFlVsBbLDJB/EZrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYbgKMkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYbgKMkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38D0C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791442833;
	bh=XqYUkCH4hM4aqVIBAKJXuehVlvuYKF2Ck/LLcmg9d5Q=;
	h=To:Subject:From:Date:From;
	b=rYbgKMkPFCoTyIrGt7qUZeqBtrJAY/WQOpxST85hn3G+ZGSbOMAX/FWzYJHpf2oQZ
	 wmc04RfscMsDg28D0ziEL1vQqgR1dTjplDlrTmebPIgpAw6QYDTIy2Do0tGmz7guRY
	 ImRU2csKRTrIeeXqSrpNqWKovorO5xdDH3qZSXjb7FfgKPzH9+JM9Pk1MjJRJJZ2U2
	 euYy3Sq4TCcf2NnWzh+2WAxnXeMyQg+suAE3KTBw6WW7l3di5F3Rk03I1CrD4fvABH
	 02jIgPZNz1VGWrg/gEdrpgVONXPo7iCVA4J+Und64kq32blNLkUz4enrgE5llSyrgA
	 FfqD9mchaAbyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE569CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179144283369.20590.14034926840983775555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38d4a714e3583874c859b295a0d23414500775fbc1dea8e031984d98487868f
Date: Thu, 08 Oct 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791442833
