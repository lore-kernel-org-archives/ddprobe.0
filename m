Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3641222A1D4
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765351374; cv=none; b=UtdPUFtDGFtmPqOKtuqurKO+BH7jGZb7T2wEZWD7DFf1TL0lwbKLdosNQnIYzrq5Ssyt3q5UmaBmoAE1wv7SBtzkm4mrs83JIjeCeHeE8DBPn0bk246i7/gxApUEznJf8f5EbbELFyfcvwOfJasJkiVr1ZP47IUkU1AU/bMfUgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765351374; c=relaxed/simple;
	bh=hlfaHZeEPkGl+TDtQcHazK56jQyHKMHFxJSdxY9rbA4=;
	h=To:Subject:From:Message-Id:Date; b=KWEWyU5LxBSxwHNJgMFsXFqpxABs9p+yNJXm+FW1SN+C5Am66mUJJw0+cNw7neml8nKjaEmXorxqW0SvRFbgcbzcmex083YZo+2wZL4K3L8FKia8mfbb+42n9E3GRCIBWe+NZbZB7E8Dy0kWwqlrqr2oQOGf/bA46nOJm9jj1uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPUwAU+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPUwAU+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F86C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765351373;
	bh=hlfaHZeEPkGl+TDtQcHazK56jQyHKMHFxJSdxY9rbA4=;
	h=To:Subject:From:Date:From;
	b=LPUwAU+ZHyhsQtnvTTcsC9L9xWLVbiOGHGkcv7+9K6ddjt8D43XdRPuyQhlElNOJS
	 0DIJh1kp/uQs1FaBt22oqEms9cATDrukPcTvh8A/JkyPlhOGFP42EwM3YV0WLQs6jb
	 sXHaR98AjKfiBvJJt+XvMgizBbVhLuimuWbd+7QbphJsAOqRZ6CI0aMvy8r0pIOWii
	 4xdDCSksn5MYhfRUH4gkhyBAKKxHGalbI3N01nBXQ8n6q0OpS7EJhcdA1JwPbkPEYx
	 W/4CTXPzC23h2c3ruCjA89rPbNvVoXNsiLZ1+hTIGwy3i/ogN21BiwpNdDxW9vvSoB
	 BMdLtg5L8By3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C75D2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176535137359.14659.14907924567792691421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd15034d0bd1a40bd962109c9b4406289e040c684913e659e114fd1528f7303
Date: Wed, 10 Dec 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765351373
