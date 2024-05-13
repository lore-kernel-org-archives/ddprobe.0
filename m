Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F282E38DE1
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 17:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715622743; cv=none; b=pPlObqCMUOw6eO1vzYgK64M5epBJ0FzpcTjD2HxOMmBhgZwp1hBtkpSEZ1WmRXfWBRfZtcFKG+r0+MJZTL8AMpylPtDnXoRcQwzjkXlPwsX0povU/9m0DotS+Z6Omhuxy8i/7OjZgJXqV//TdRcBJ3gc/6Jn75f29DEzxwUGoDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715622743; c=relaxed/simple;
	bh=ajS1H/DbUFi7YnXoNWvasoQhhkpL+glRRWS+oPoDvAk=;
	h=To:Subject:From:Message-Id:Date; b=Mp7b7DM3nSKQVi/Q/iZZPywmFcD7ikdNONcUHYx8dhsDJcBVywMqBKN61NXwC+Vr7TkklZ1H6fZ75hWJG9pRXspADUnttQOiba4wjxTOn1S77rq2v6gl7aO+OJ8cNcgF6mKRjYWuHGU16zUCEV4IaPBX0CuKZosrZpVi3zxGiMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqKYZ0+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqKYZ0+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0744C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715622742;
	bh=ajS1H/DbUFi7YnXoNWvasoQhhkpL+glRRWS+oPoDvAk=;
	h=To:Subject:From:Date:From;
	b=oqKYZ0+EUBBmENQE+PoGa4rLJaXr2/nisG7HdOcaiqmz+QC5Y/MChazeaHdrtvatx
	 S1fky/KeZ28R1oDyYQS0FSTShSUdlzx4AgkKLAW7U+iGnI2aa0oQ+WcdTedPhkGBW6
	 Xv+cy5LmlYnMmbBYfZU6zVOckQ0QuqK8tU0nHWjFvLOpPcwjUWm0Xm8qfBiFjO1ErL
	 NOhGb1goLCHiCmY0IpOknImjqKzdL+/fEtRgf5B37DuMVWnxpowC9p+irme3KdYdrc
	 9uHdYwWQDMaMroaxA8Edc2C/3oE3n+3RNLQAIDTetgsaDdqFiEo6pP0h953FSBY5FO
	 U2lAkKYt6789w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F26C25B74
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171562274277.1748.17160950020991575342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11cb48bb4bd9a63a9b71cee3c7c665fa0771e542dad69d1e15d23b7f70756e6
Date: Mon, 13 May 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715622742
