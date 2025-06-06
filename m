Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E37A1C861D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749202794; cv=none; b=rD9bHHucGcO0eJsAIQ4x1LNT0KDtZUqqMpWga7vK0km98atG7TqpjAXpCM7nrpkAQqvw+Mymlx2zZ3EGXeNJXU3bjGDR6SScm2yRxglybYycWzne/QeB8MCgLa8tJaT/kKcmNvHdS0JbwPfDYYzKfC/1bYbo9NEjgfYDao/fwZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749202794; c=relaxed/simple;
	bh=xYvRorx8OhRO97wfY8+Q5wWPV1q4k3zUoepmA8FJUEA=;
	h=To:Subject:From:Message-Id:Date; b=mffN18SrAr6bU+gYd7rG2j38tcy8ZpU/y3AFtY6vRpGV8Fmu8TuOAKaRO0LVbelm2VuXHvwfy6rsYtMinphgpgaweu8vJtiKTeOS68/JVcrVmxEbs34TuH3Zveb1Gn2JYF0xfaHwEUTeEbf9aZix8GCg8B01t2O3qmCP273Q4B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vvz9RN5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vvz9RN5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F15C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749202793;
	bh=xYvRorx8OhRO97wfY8+Q5wWPV1q4k3zUoepmA8FJUEA=;
	h=To:Subject:From:Date:From;
	b=Vvz9RN5KNFwA8jKLwU680U8AJQOOkXLMna4ZpUQ6O1zkezQvEa72e47Prh+piM2yX
	 bPJ0lPtnkXSjxyU5Vv33VqK/nBoSCuxu082R7TXfbv2fQv4rG36XsQPUzlUdAX+D7n
	 dE8SVn2JGcy/BtWuRpPM6XqMUwaVuKqdh3tIg3p0xJicgUNepfqH+NNJikrNAwuEOP
	 GxjAqBK11lLoqtepiszFvtBWZrGX6VZ/RG/tlsYPbYhn4mcFNwMtNDEugIrkP3WT88
	 V2M9/9h8I6pIpr5V5I0Lu83xaC9PzL+H85DnxVE5qvQJgx4YcwycJH0pGUixyWvtTz
	 Rsw6/JxGycjrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9010DC5B559
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174920279358.5156.10930182736853583454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0491690977cf2e6e1239283cc050cb3ad7f5d7765dbcf07938eb7a10915adcce
Date: Fri, 06 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749202793
