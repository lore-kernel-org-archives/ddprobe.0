Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ACBB661
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757955594; cv=none; b=MqgwW9e3rkDX4ojIgb/o7MNrgzfYy0oKLcxe5w/0ktBwdvR2H+4feoYSd2TNhR378TbKFGNhF/0Fvn+/5xEL0LyL3tgQB/FO/VIHaQowPlq7Dmg9bqAy5nRC53Jzpc4xBYQtghVNXIRV1KrRhT0Ia/GDbfDDCz/XFFsbgdtZZEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757955594; c=relaxed/simple;
	bh=tn4+Kjqo4XzdGohmdxN3s5FkGZc+oMTFXHlrThgSIcU=;
	h=To:Subject:From:Message-Id:Date; b=TeIXg95yrgwoFIdOt43NUood+OFSFkQgq6ydw/GEN4Ku8k1iCElsS0Yb/qwgWXDAAG26uyR74D9bZF7TAheg7KXrMZKIaMWhMKxKl5KCls4bC++/8AzNQZw/D2WCDkXDpTz5PfhhvYnPwIl4A/DL/LREvfN/AC2ZSQ7xvYFxFmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QB+HJICA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QB+HJICA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A75C4CEFA
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757955593;
	bh=tn4+Kjqo4XzdGohmdxN3s5FkGZc+oMTFXHlrThgSIcU=;
	h=To:Subject:From:Date:From;
	b=QB+HJICA1yPueDI6Udlx7Y/cPqZj+1kSEwpcxi0wXgN2PcRvZzh4bqgQIao1k+/Ul
	 n6Sbr47MNmQyALlvB+tYogqD4/ZBsmoIp5NOlfV9pVTWhjGVGzxXe0LPnCbejGfyLD
	 PBefcXQNkFTwumxFlgKwzfC3xuON5oUj5JJZ9nc4rEEA+oEEeQW33YlTkBDWhA9eSK
	 ynJqiONhd5sPhggEGhB7lpg8SaP8utVtADaA6ypPz7hTIT+ic/hLkWll8FeofBxDIS
	 v1WewfhCh5YxWEWQXUEm0O8xH0rYveSInMQ72OsdSw/1O/P1Q4Z7k66qaohARKWL0I
	 D1Q3d+vtgK2oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C4DCAC599
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175795559358.29070.7522902474729613342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031bfe63c386a6dfc7a6208a85b33397ebc307215590affd263bfaac962292ba
Date: Mon, 15 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757955593
