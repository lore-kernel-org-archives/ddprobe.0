Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5CBA27E1D7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767046433; cv=none; b=K9Qt0h5cFx8oJQVVwmZUZ99AYUc3bQ62ATaTi+i6zdBRz1q3hJqdsJiDyBOy8Ae2DoezOJMo5rxEQYRd7cbRT3UIR6yLLKcZGjH5rEQoN6yI8aEdhhGC3dJTC7NQbMgF3fQxlzDgBdhHOVra3JCA/jiECyh3wqoEtqPq/u45YRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767046433; c=relaxed/simple;
	bh=Mvc3GhwI0j2i/62L+XxC1OAKgp+tnxu2YOnGivrC2zU=;
	h=To:Subject:From:Message-Id:Date; b=q1zBdlq2KrMhS/JGBQV8vEZeL9kbnw71VGp939v0Vk0wvzASl50mv5OUe5bEg7xrjVb/QBDw9iSYVUgjQBfv5rWG/UeLNbUWEYkTVdxdWIv9OSOCUQ9td2Q53grxRIax0tPOk23ufftILBTs25MeON4YVS61wKz2YFV8ckLE2K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YusyxYtl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YusyxYtl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E97CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767046433;
	bh=Mvc3GhwI0j2i/62L+XxC1OAKgp+tnxu2YOnGivrC2zU=;
	h=To:Subject:From:Date:From;
	b=YusyxYtl65x7xIQJsrA8NiLiW5lz3gFUjEw4quoOcyM9/4AfjqKXrTmqA5U/0tvHC
	 7r9SYnkg9XO8FsmWrKS53qde+WuGNQ8kqrRnpjJRJy7GSqQSosH95oF2vVxyqD1tYz
	 92Mi6NxylBKE3qfGHTDB7F1Utkee20vV3GfwWKRrG3dkLiyM3lxKwCW4x2BsAEOgp8
	 xI5yR7oPxDHk5tVZuFkcTb3iotRzIHvbcRUMj2Am9HyXzvODXekzS86kpDDgxQl38X
	 P9v4DqSFrX5HOI8kKzYece46abs6mPewDsrtSWqtHDQxXhhKA2s1igoKwp2/HqhdsS
	 nkasx63u28EMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90262E92FE2
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176704643358.23547.4661172918602755223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 717bbb1083e295f933aa92c81d673a55f243c61e3f0516b19ff757635089a8f2
Date: Mon, 29 Dec 2025 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767046433
