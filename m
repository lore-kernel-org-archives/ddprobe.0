Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A30635CBD7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 06:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781159794; cv=none; b=CM7LsrxgO8LSAuzow/wtPgN7jzTKHJPEX1eRgtWjBbiZoVzOmZRJhiMZZ5ep2wFIxUxhaqfbhbaE/Nfqc/Fpp6BJmcg/9Z8/nLODp1GQoh43QdgMGUuo24tBLo1J283OiX4rUDA4jS+k3HtTMAe6jyJZ/3ixjwyYTj0jaJl4odI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781159794; c=relaxed/simple;
	bh=4WSu3xhA6Ygh/nnBZzsXE6xHb7xLix3Lvz694sqwtm0=;
	h=To:Subject:From:Message-Id:Date; b=bloG0WtV8B2iC8tBY1EPIFt5JgbXgxtrNcJxwSarPEFlvvuLGjN5c/UDlRK1mW0P8l7u6Wn+WJdRPKoxjwm5SGhVEMqQ0uei/aD5W6AYJyeItky07J1P/gbnz9wnqKfl7DcvB9ekbu+vHO9LfuQq9ZgBpk5sCMuc72ZuAJieBbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FD/sIoAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FD/sIoAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE81C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 06:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781159793;
	bh=4WSu3xhA6Ygh/nnBZzsXE6xHb7xLix3Lvz694sqwtm0=;
	h=To:Subject:From:Date:From;
	b=FD/sIoAyxZafln4+eIeIpxanWlivJ1xdsfRMwWy0lsCXxq0Wpw+G8fjlacJ2UjDT6
	 lLwXTyEeJdfHI+YKC7L+BkqJCWgVM36TvLKxw2IdQQ+e3UlQWf/iScDH+7EhJyI27d
	 kWFGXNJPbSTDvvxLeelaa3ZRE/pg84BXjaE+Qc+Jd4/xp2Bj8ebJ7AM1bRvYGzkZno
	 L0WQ8A8ffphqdI5U1WW+sC4RYhgc5tJmGbk6SpNDAlybsV853Zwv0RSVHjAyg23TqH
	 7rV2wiIothhCa5Av3gRIL8W76fFVmKbdpfxOYFCEp6rKZWdQhmiDpXxbT5NRgSB+R3
	 NvptfHvDIGzHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A4FCD8CB9
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 06:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178115979372.24105.16374054995005607817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2c686599c076e0e6d1cc0839d1dfebe04f3a7a228e91bb816e135cd5d25188
Date: Thu, 11 Jun 2026 06:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781159793
