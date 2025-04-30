Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9F8218EB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746010793; cv=none; b=tebe3FUH787/0WQ+3xju+D7zr0L2q20lfWR6FN6Y/GOgamLJv8MJVhNoIzlqAqVQQv8W0h4+CNE+ltEeQNWi33hiYybTf942XKtVmnzQdbTOkVplVHDjgP/OvlEXGpZO+rAfnTtHlCkVdKbzNsLq6/CFZCu9I5yPy2aSILyWvGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746010793; c=relaxed/simple;
	bh=ckWkFjKPtCr6Cqcnn4vthC42TarzW8Udv4cxH0wQsv8=;
	h=To:Subject:From:Message-Id:Date; b=HnHu4PnyY5O1fp9EnjUJYY994asANl1b7ZHk7P+wrq0o4EV/YhkOwPtZxGJrvYebmjTQeJDcVREAUnSGXlfue8Pew8z874om45pI4jNnCrNa8z8LTcC8tVfvz3b9LueRRrmE0RDVuekRBtVkOZaWy0+QPHy/QyG76UHbR3Iu0pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ja/yIoN8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ja/yIoN8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D14DC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746010793;
	bh=ckWkFjKPtCr6Cqcnn4vthC42TarzW8Udv4cxH0wQsv8=;
	h=To:Subject:From:Date:From;
	b=Ja/yIoN8h4vyHck1cXW/bXv9vyPJfX3yJyQakkAXi0X/75qLG9QzbUxpNAdjqhjvj
	 IfEKRb8iWjbN7thfdmAet8/f/zkce0Ykc+d40ivziS+3Px5ThBZ4XwPpfWYywwmn3C
	 /rGkER1NBnAtap0WxnysVQWqBiOY+tn6dcKFXFL1B7SXYBmSfQc9xANwmuSX5yd9BE
	 6PJJNpZP0VkoQCGbbQFczxVazI+/uDYUXrdKQ0as8Yi5KeCZoKJmUW5rIX2miFjOuf
	 4oM1ypbrO/UC6awRTaQVHfdiboZ2NbJwiqUZAHQYYCGI1Oeklu7OFBO9DHVEMYktzT
	 wE1RqfN/xt9QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6BEC369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174601079357.27865.5705092891668695611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 239f7923cfe55ee0ae7dc114a19852900a29489ea1d8541db10ffbd0b1b01844
Date: Wed, 30 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746010793
