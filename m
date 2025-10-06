Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135F9184524
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759786794; cv=none; b=gmzP0/k8XbNWFfxJqDTobU2eXMAL5OfllqSC29U+NbqzK3g2FW/A7itkWK/eHp5tly9v+fWjASHDw4AkqMpliMZ2f3ORGojm0vzJ0fS+8ggDFs6c8nefmluJstoh1c0bVOB1RnHcl3KGYSjtBh9KItt7cJf9DksuFTzsWm6xU/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759786794; c=relaxed/simple;
	bh=xeUpv1h3vFdNIZiU9kahoZw3XYubb2zukm/8ZQP0W9s=;
	h=To:Subject:From:Message-Id:Date; b=OzTYw4SrmX6Lyzwc6OmgO3ceVGln6dECZhMlocfbYRYVkhL3+XxQi4GG71jHibeYJgulNu9hauBwi47nVGGd1vISqA1XCUbEi05IxzUJjhUsB99BSQEDR0ZxOzUZpTK1b8dm62oqRhnNAG3ZoXjFLH7H0aWy/icx1RQg/Fi/cLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nzdi6XJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nzdi6XJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4EFC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759786793;
	bh=xeUpv1h3vFdNIZiU9kahoZw3XYubb2zukm/8ZQP0W9s=;
	h=To:Subject:From:Date:From;
	b=Nzdi6XJaKezJHNczQDyhKzg1TC4Rlqe8hdAR4faGikFLQZb46yGz341Bw0ew2i27g
	 HjYyar6buGvqGFaSQME44FO65zLm0FDqDSKQCiz5Rr6oFVMGLLzcxijcwsSVfr5NAo
	 z+ZpG3Mgd2rYwArB3pgJe6MG7dU5i3/+h8emQAC/bJuLygZhpRswJf7LGMokgk+3xM
	 xXTm2tZgFOez0FdGZ35DVGViqkH6Zgwg4grQPh9Z6TUMDTqGNrd6rYjkaPUwKrFgFK
	 i2eW4jyUJEXEHv5+0wFO/M/65U0CNnAYZb1zpUxIT+BuIZyvUbhVzK+ePpKEKjtupu
	 cbHze5XTNq1aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911C2CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175978679358.9370.3291387123113730756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac322aaf46af8449cb50a8d24534cbfbebbc72303ee769e379842cab0f1bd9a
Date: Mon, 06 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759786793
