Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E855383AE
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721416554; cv=none; b=kx3sdkmLfHoexirM7wN5medzS7n5AtCZcg30oRAkvPZThY2IFmDPuPlxqbnqEeUKh9N9ZSVy7Oe6d51HnUvP2AyV3W7W4amuWfAarkRqNeFxJ6SxvFiMw3r4KJq0WXubg0oGLFT2ZlwIwspFzKNpaUU/QFz+4mj0R+S/GFjR9D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721416554; c=relaxed/simple;
	bh=PHCEdSXLv1ZcLkmK5wIjxsIvTpngTGoVuEoSoZN7q3k=;
	h=To:Subject:From:Message-Id:Date; b=GU1EUcv68fkUaCjjXPob4i7CvYdf1w9exjhRyCYlEYDyh0bvOj/wD9fiYlaf9qV9GpJy1z+JOeSUtR2s1Z8sAqRi6nv0H7kJK9pzxz68HaAxOBbUjAUOW6s7yWQo+1/4k3LHK9eUASSqNQBywhMJE97Jh2zT5A6RpJzWBiQ+9pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLJ0niWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLJ0niWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A5CC4AF0A
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721416553;
	bh=PHCEdSXLv1ZcLkmK5wIjxsIvTpngTGoVuEoSoZN7q3k=;
	h=To:Subject:From:Date:From;
	b=YLJ0niWV8iGrrXgrAq85yTXWnonkPCVLz/DVpOQjhATD+clsAJFw/XIXk3/RejMCi
	 WfwLV0Oj168YCYLFHuKSD3pGw+MYJvx3BplzwKJ6KObxVu/WAYYeEpCkTR65XpZG7Z
	 r5WX8kHbV0hjOb984kWVQ4ri8Oph5NDxxTOav8/ZlEsQ5Nsa0Ay0O+HZ30D7+M+Ult
	 CzTwzc6ADUPRyymHLFECxQfGfwcuzs6cMZOyKZpM5dZfuX77T+WZOT6ASmEQUe/baO
	 tTPka5Qoo0Wv3WKGBFJc/CYo88/qQMhw79tTFwU2yj17bNpoiV2jqBr1wRwSiydb0L
	 8Psn3nUs+2tcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F136C3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172141655357.24910.2021442000350727515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f00df4176a94fe77dd0ac8b4fc099e4296865d6f64cb419aebe747c094e835
Date: Fri, 19 Jul 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721416553
