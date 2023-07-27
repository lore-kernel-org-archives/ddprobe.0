Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625FEBE72
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 07:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAC4C433C7
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 07:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690443128;
	bh=0BLD+FxLYB6lHsjJce6oADpIf1DuV2n1FQHhkA3g4q0=;
	h=To:Subject:From:Date:From;
	b=uS7qwLXGeMiuH3btEFCT4F2Q9l5ZQjv4iBQT5YAviJPgITfdb5CB+tV7oneUcTnf3
	 VGfwV2JZuvjHHG1ICPlTPEVGa09qUCe8TUDFIMev/hbuRywKACNulsAFjhnmXfR2Hf
	 it/Sl3+s6q6RUDyzK73zsYqxB8NIgICDEO2pWXbGMm6BLmj0Y7p7mSWrtP1zEbOqiW
	 iZRScQJkE8VIhEnHou2l2yyUlU73X6ZQZIi93vKd5XweFnmqwPgaSJetSSlBriLFu/
	 kYtg902enq5SVuBlN/Aq4Ld9Cg5bLuqPDzs+656uq94KebioeJmyRckD9cmQC7iSwD
	 3X3GcFqdOEAcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF04C00528
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 07:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169044312869.5853.11423361472327100242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b77f463649cc6549bdc49d35cbd11c2d3b381832271bdf08a7a3f95727b432a
Date: Thu, 27 Jul 2023 07:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690443128
