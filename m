Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535C58F58
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748314794; cv=none; b=UgKY3GsyGPQF+/5KFPblgQpYVSY4gtLB4ytE4t5L3w9JBmPv9JXcUE1WTN22bAg8UJ8gXU4Whch8P9XJgjo8BP7lIpqwe2Xu0QRBpCRwaTGEsHoHHXxSOaCctmXpt7I/iSSRVEKuy5ff7mztPmh/pQaM4vEsZBp03IZoELjtVzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748314794; c=relaxed/simple;
	bh=9hZ29oHPD4vB5xVqsi6u1XuD9yIYYPKwD4rRlXG3GUE=;
	h=To:Subject:From:Message-Id:Date; b=fj4U0HCRS1hWXim+h94TRSmIbRiXHOJ651CWo9+MtXKULyyU/rfdoy7RcTpX4KeVw+7jAXBRQFPmIQrZG95A+70GYpYfe3/Y3yAcQJxfSUfNCr6G0kYAOdk12jmVF432uUaIjQvwjkhkoyQtxVc2yWP6G4Y9uwJkzwBA0hOa70Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIJyzxTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIJyzxTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99C4C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748314793;
	bh=9hZ29oHPD4vB5xVqsi6u1XuD9yIYYPKwD4rRlXG3GUE=;
	h=To:Subject:From:Date:From;
	b=AIJyzxTUYsZFC1Qx5D31DJJforWyigRgKMtcLomeICwnEhZFZTJqkngh8bwdUw+jI
	 /gzsDS6bmvn/LW1KZDCyb0NF/+spx239Wbp4jD/yOFSS+YvIEFgD+NJA5ehZYSkeXR
	 8i0w76RDwRiz5+su0XAA5g/j3r9tYHvRh1RbNQQK/Ulz8MSqIsH8e0dnWQb6RFVtwa
	 7UaJbsb+0BUu6FGAvuzDbBe3kB7JQw0eG/HSdPyPCBhZt9s85wirSDy5+7ulSYARmU
	 kcWbClkOchb/Hi4EIwALfCjKExUHPZtOY5xgrQw/1B4VWduYfUkeOrKySNBDanh3Gk
	 pKmthdkVx8ntg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947F9C54FB3
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174831479359.25491.4584884842207887614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a99fa36bddfebaa561e43bf1455fc1037e357510c16d3b7f548076e606214496
Date: Tue, 27 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748314793
