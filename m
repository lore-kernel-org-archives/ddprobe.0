Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCA15224
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lglllTBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDBAC433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703627896;
	bh=7fWXY9c4IXK239ZcyfcPp3ihXM16vvj5rTiw5O6sMg0=;
	h=To:Subject:From:Date:From;
	b=lglllTBv8+xJYa5EyO+TMQ6LH7kvSFsvscRxboLVfC6qGaCV8vTI3lKHOk3enG0v8
	 ap52GE/YAVSxpShljYouliG8K33pjP0id8LSwiYlQOb+AFyEeCHezwNNnhRTaapex9
	 Drz+Ao0zL0GoqaY1V3PV8hSt4QvMAhGcxaE82zmZMo8TqGwvvkLxAxmokDizOhrE/y
	 jDJdALTuknn/SfH/4MwtIxqc3cIVe5Nz9L3BAu+ZWe1TiQtk7iyGVQGmxZE9ApG5cd
	 MKhz6WEOx199wctCbYRlnAnVusk0/GYmd9wq0rke5WW5ztX+lO65DCT1UBLQeLO69s
	 JDRSKyWsADMNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CC3CC46CD3
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170362789648.29241.13613766010753557966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5bdce6f2c3f8a69f370d843c0a90c20553c6287c739c87a889d328793bad26b
Date: Tue, 26 Dec 2023 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703627896
