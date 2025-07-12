Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2647A320F
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752325794; cv=none; b=PkvzlJfY3BR8lBIOnkoHlxYTHF0H1bI4UPNTO/N268Z8ybN9VBZD2Plc6aMUyxuK4oTnD29GYoVCnQpLI863v7JGSVUt2RDlMo9++LrJ7OwoupRnzpsi0E3hGAi9KUjmzdnUwcu6ZQrLhYqpbnqewUF0sw9ZCnUoTo+KgOa8xCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752325794; c=relaxed/simple;
	bh=IjYsiRRIo/yG778jonsBKko+4pNQnfbWo/Cgq6L0OrI=;
	h=To:Subject:From:Message-Id:Date; b=DgOhc26xfZm7Szbryf9ySiTgxT1QyvhRnOX0qMK9lTz00Zgs3ZlIVCjY5XLwMYdoShKUoA78rDeyUYiQjN5XmKidNanxaYBuKwG8zcZADzYs4nBDJmR4ArXiHLjD6FZ2eRvKSszgIiDsF6IR5625Ol2vaM7/R7v8P1IKBU0omwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2VTJSbh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2VTJSbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1221C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752325793;
	bh=IjYsiRRIo/yG778jonsBKko+4pNQnfbWo/Cgq6L0OrI=;
	h=To:Subject:From:Date:From;
	b=Y2VTJSbhFOux2O5C56xqNJ0usFoopvtn1zB/o5NbA5WbYQUA2qO6dL6WrSQkFHSXF
	 Vrbm4lpgz+Gi2ObRScKsLkGK/HGm5IYSpXmz0z4GNqnY/YEZYCoE+uqoD54S29IapR
	 hFzot2vnTdovuiJWRf7p9nwx4DtLHbQPI/0u/slAhhs+rlhAmdnD3R6YdDNeHcy6Ak
	 teKAHObnp4PlpT4TTe5fMwgoWfhXtA8yUxMWVC3ZdQVknUOmjZT8kMYKMN3YV2Gj0z
	 opMD2C7HrOgFoMCC2TJYLPWpqCneIFEzHf1PwDqKmgO6zBxqDKuBjIazgmFeylZtex
	 pSZeU/dEEN4eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE2C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175232579357.23449.16356837486309443044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a19a2ea656134684ba1922d31a5ec4b16a7a514bac806e9c67c7257116664c
Date: Sat, 12 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752325793
