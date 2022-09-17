Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBDB836C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69698C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663403453;
	bh=YHNGSLBj3FyJT3Ui7x49DGNJ53UviKoBIw9LqFQQ7Z8=;
	h=To:Subject:From:Date:From;
	b=gLP3pep8WavJXaoO5O1Uu3i+EszwNOYWAe1ywW+S3WbM3QBuhC2i7PaOrzwF2ioIU
	 YGfds8TMA7s3IkLyARQNvK5m2IBuaK6lPB53QLoJf3m9pz84gyE6XiRVb57DMi3HVC
	 MmP11JGe1Ix7DkP/2ivlfy3kcbYmuzekgKFL258gTDldpki9078X7TCUPPsUPBY5Au
	 tz0TSmSRq2Yl7ezrerr55w4japhtjhH/Apuf3WU+gm/I4QHsKdaKH5jbgHo5i423a8
	 Z4TGcEHh6bDp5yJsB5Stl1KrWVDN99XL27h89Nh/YW83T9b8PGt2gH7yjiMHsDOmWi
	 AV5xpxMAXd+3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F8EAC6FA86
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166340345331.14139.16235660421128040677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f618cd01356df7bd9f889fb5e578ac7bf421238a20715cee4b753c9a0971d1e
Date: Sat, 17 Sep 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663403453
