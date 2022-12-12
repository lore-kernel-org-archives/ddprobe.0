Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8C8C1C05
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82653C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670809287;
	bh=5WVkbXeTwHpeN84QGuaUNGefmDvLa6rKvWxdhfNLl/4=;
	h=To:Subject:From:Date:From;
	b=ap7bErTXhjZmtamTJPTG0unqZx2t21Jw56VdfyTAs94vz/LC7+RZ5D5IHvSpU6RLo
	 G/e870SxXsCSS0qGZRAZdr5sfLObCzeBFqcTYw1zaaZcI+usv+b01qdenXCCXsDHMI
	 3za4FAKNKI5scYeCpM4SgBJ7+Rzl+j053P25jr9Gf3Y4Joec9aW0motxG2MWWImblF
	 WkGA8vGoPX2X8zmXeSIuTX2r+sQieS03oUGfgqn5i87MT6DIg3w9IgrWr7Hd2mDl74
	 18Kf1A0j202maxlKrpDah6yqbs0ylmdnRbnold7S3FdjDSRwSOERuqHFccyxWER5cH
	 qBgECgE23uIEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66F12C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167080928738.6006.13169182845589916536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac18e0dbaa735847a72d0e9b778fb02644c4f793f8e2a3a07071670638bebfd
Date: Mon, 12 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670809287
