Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF115953D
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nm1zI09f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B992C433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702376296;
	bh=M2h9i5L/UaBTurfuS2TUxxnrmIyMZlFeaNqbYhpOFy4=;
	h=To:Subject:From:Date:From;
	b=nm1zI09f8LO+UsbiiiTE0BveAqKestOK5nt91zSeAHM9czM51/VQF64GtTnzFhFhJ
	 +4Eifwlh66cetyJBe4jmUv5nUXkR+41BX8O0e2DC0a1EsUwYlCuXjdDUbuzczDK6OK
	 9gpDl4HmttZjCGL94KYdwsaubEJEc8Tk021rNNmkP4XWy1yQqgowBoTbHl/viHTIB0
	 ZrUtCEYbj/l66/GIcakEVxNomfWkywNpTB0jaC6r9MWxrOZW4Y/apem7yM6SNF6VKM
	 rcYxSvaSuQ/PqBnVl4uqeZ5fLSft+lFoRM4XZnoxsEF6k418LKb4Wy2OY+xoYqnjZG
	 a7gmxU8+VdDcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6F0C4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170237629637.6393.12852842315202339060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876a0ba162322112f6d9277b8ba51d3c437cba857dd9704ba1474feb2968d713
Date: Tue, 12 Dec 2023 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702376296
