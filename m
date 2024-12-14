Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD05BE65
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734138954; cv=none; b=ERHeO4jdldqJjVZhHKkVKzeIHlWirtnCRHMlP4EDEzcTJ8/xr2sbL2lFxL/+WIk0T3rVCZ1deNC7TxC8fzTctz3CSLjaq6DPr+8+MTUfYzJxyU+1xqavByLD/O2IptkJaYcHy3RSpy6WHScOI++b/5Xl72/r4MVd9fmM1GZQ70Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734138954; c=relaxed/simple;
	bh=aM1Ves+hU9RuhcCA4/btO/hSAmCKP0PLP8WYC67o5cI=;
	h=To:Subject:From:Message-Id:Date; b=HR7VXHvNlGdQ7CcQk3E6VPeXcFLMGeCdvzNqkGXSygHEeGKXpobJtRNLvVFQqP2VcvZ/IedI7FHOS+U/xYJL0tcJHAZccWGj5Rn5rOsm/lh9Cq5vrC5AJcaXoAxB0yTugKMUguTVJRgKhOWiOscGkBjkE7lzKnzoejglv6RLgzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HorA2mcZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HorA2mcZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17DFC4CED0
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734138953;
	bh=aM1Ves+hU9RuhcCA4/btO/hSAmCKP0PLP8WYC67o5cI=;
	h=To:Subject:From:Date:From;
	b=HorA2mcZOrtNRsDpGysJOcMcNsC02vOz2uvFqn5l3Rjx3ek7PaYQCvRZt+JYPrQRz
	 X3JNEwDkrqAlkMQxx4SIOWaj/r0byynQsmL1fC6hDyzAPXw+mkjpZZrN0okfs1FnCW
	 0HzVkb4vLmfwdJm7jFBGRxycndIhB/MGAQpAogJVj+eUa/2VkfTjVMcCSqcBMVDaEg
	 qheqkaqpIVY7eqbGAEebyB7hyNP3Lk2gzyuhx5g3OYn7sO2IUg0MiDuv8N3iB77PiB
	 7xqzLqGxvNnps7+wAo58ubIks/TIeeGjmt7hnUfM+Rkuc7f3LY7d0lBq47pAZlQrJq
	 xZZgPZS2JbTDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5CDE7717F
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173413895362.12055.10308251337910105516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18642fd3ba3ebe654af70067956bb35affd7f50e1b2910bf3bba774b4291cc21
Date: Sat, 14 Dec 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734138953
