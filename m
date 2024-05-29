Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692441C6884
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 21:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717017863; cv=none; b=boAnzeyhH28OMbkU3W8jeDWa4eu3fWymhBOWbp/tPrY3QU3L4znnrRWgfIYhP23HxyRpQelXL7QW4gI6GP9xMJxrQ9USGV2G4fE6wVTrjdK7a5JK/ebkty5h7nqAS12rnz4eYS6RHF74Rr6X6zYNnpd15fu2nL4S1ZEnIa1+p9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717017863; c=relaxed/simple;
	bh=DMTfpuypaV+i4beIEF7ioJmJfNwk7VDV5/oblw9D07I=;
	h=To:Subject:From:Message-Id:Date; b=uNlQzvfHPIM5bCa92rIDUkWeRf8Fph4aP+GeYXoBQ8f9LAPt3w7v81Evd0vKxKUo5WYMg44QGbEjjl2xm6yhjFvzFii3DrNu5M9TEOJGhDJwkip8zaTrfsjDLVCvj3lb97HE+590dFbOIFO3reEjeDIknbmGXhVKm1fFkXjcuBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaxHv1GX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaxHv1GX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1D9C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 21:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717017862;
	bh=DMTfpuypaV+i4beIEF7ioJmJfNwk7VDV5/oblw9D07I=;
	h=To:Subject:From:Date:From;
	b=uaxHv1GXtqoj0kC9yeV3VxB8npg0Fy3IZ/91p/DcElkQwuiLAayhsdri0nTwfICDD
	 AwC53Tn/QGvIOABDZBgrkOKsSD0QKOxkI0HEA6Te1mRqFlEv/i0P57FIlWwcxf1hp1
	 IXiQpAsvrlJOLLEwkOuCOcEUWT/ErA1nauM7aTSOrJK/AaiZgnvdDJ9PctBwnqQ1hn
	 AMo5aL3o5qeOeTCYMW1QGBmoNssnkLS6DxZcx674aw85TWZlA5TsDIzOyZITI4QHfF
	 nKSRNcugUuKn4En1Iy6YcgnE8PoMrL8P3wZTWlXoXYm1dkZFB1r3sQG9oMxs+NlW8Y
	 UdBP5VHrbGHYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE0F7C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 21:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171701786278.6263.2261963142360314211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d1648b88745a9dfd569407572d86f64b8f97c6f862beeb6944c599b07c6260
Date: Wed, 29 May 2024 21:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717017862
