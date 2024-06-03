Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727081CD38
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 19:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717443923; cv=none; b=JZ+zSrXDv1lISUDucXG1sFxHKC7/FfeWGJcRhpkXr34xCjlSms6SK3Pw1wzw9tdjmI4nMsPUVzrjVfiNl8+4xk+Z1B7EhT4pZKaaYqsILxNjrbwWzKOs17a5B1t3gXyLFFPNP0utIF/HhgtTVCpQeVPaX+x5VqcJKJ2J6SmnwSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717443923; c=relaxed/simple;
	bh=WQRdB7QcoMXrpVawOIyuZX8TFW1V632lzXEU4pgT2+4=;
	h=To:Subject:From:Message-Id:Date; b=l71B7llm2yMOVkrl2U6I3Q0Q+ymjSNt2bDYOQuev5I0pwbNeX9zuhIoejtHTHda+efufnF7sTwu+VctcG2elRDGOWuWxR1jaimuTh6vCqPxxY8xXGAhqQrKQ5mT5xBJv9QGLs6wdMbdDLyVga4p2ycBkTCmyfoMUXmny9l/Kpfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6V2Q+FU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6V2Q+FU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE93FC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 19:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717443922;
	bh=WQRdB7QcoMXrpVawOIyuZX8TFW1V632lzXEU4pgT2+4=;
	h=To:Subject:From:Date:From;
	b=P6V2Q+FUSMuLQqoIsnpRLJIk9835O5V6ay3T/wbVdBVu5s37NjB5vcaLYviOKNIBW
	 Qxn0sFQhw5qTkMXmd5VT+Ov+q8EjdbGG6XiSAmhAuGy3W5jDhJUaGh4ezZ1uLJ94iq
	 TE4l7Mq2lAqgqJzYTLEQyMU9TBxOEyWHyZNZhNeCCshO0Hg7AkoxFpTlvTml1jTcRj
	 lPLON1p4cWMkDG2ZQjlNJYCFvOpFOHm3p1q3CjgTsfi/bYSI1Nrkm6d+MiJs8QfFE+
	 XCZAQPdHatF7QeRUSq6DAk/CH6DkK6c6594eK+pXOPUQ0SEEWMrp9p1g9l+xQ47xnv
	 3XZhOtX9nKa2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB65EC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 19:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171744392278.19411.5844483543568391090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfb0d63012e9144645717aeb7ce448284415ffc7f42f7202b425aa7b365255b2
Date: Mon, 03 Jun 2024 19:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717443922
