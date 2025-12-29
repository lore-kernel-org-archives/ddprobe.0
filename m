Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD00B322C81
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767019433; cv=none; b=W/GfGXQsvQG8jRaD6i2fYo/qtXgzMYZ591RPCNeMw8gFT9uPzf0qK8OlvcW8sjI9KgsICDjd+VG4fzYzk/IbrNqIKcQczo4rrzlqDOjkTWyv9ZJr3rPzT5w+jrsdicvUMIPt2ki3x6m8lEzqCfea5XBPG5DS6mRm1HTToOhgFHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767019433; c=relaxed/simple;
	bh=1XmK0mHL66LlRQY7GZ9H0GJ9L7WjXh/HdFrEycc6v78=;
	h=To:Subject:From:Message-Id:Date; b=m1a1ckrK7KT8HRkl2Eeh3jlhq1RkBsfp4Bs6ief/tN7LERJf5s7x6cWaFZ5WsAeqg7ntXhJshXo5GoPPN4/lneldAa8hLRmhUVqS6KumBtIwY2rI/BeaF65kKJwJk5f3rr7UnG26zI1BzwTetXYoLD8i2nIy4/t/14+dCx/47ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nb8NunVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nb8NunVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2EEC116C6
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767019433;
	bh=1XmK0mHL66LlRQY7GZ9H0GJ9L7WjXh/HdFrEycc6v78=;
	h=To:Subject:From:Date:From;
	b=nb8NunVyOk8kseqJqEu2mz5oyLUYrcAoCyN4B1adHqYRFAU4YJO+nePVcUOcl7aYl
	 bfX84OWNZlU5gpDIaqeeWhvd8Is+McppTkOmGNWse50gcgy+wdsJQ0PNShrfS7U4Nl
	 TgVW3+7UPII0KKI8lvs1O4StBe2zERVE8AC2yI/XFrIAqo5QGLh6D/0W4naRrHdMJ0
	 5tGhHPD+LdGiPSUejQichx4miwR6KjrAARt3FZ7NljCEnp3rEP9tXP71bgwPgnR80G
	 UpHfx57NbTbCA38HlXdP7isZ5EAmHPJiJ1OQfhtphBHokmMDh3VBirttCFvkJ0GkRV
	 ZFbR4yC/P/HDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C52E8FDBE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176701943360.10466.10218459598865881373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9600c4f22bba80b0c0f097ca35ae05caf8d5ebcdceb931641aa18942eb4d322b
Date: Mon, 29 Dec 2025 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767019433
