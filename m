Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D917F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A395C433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662876053;
	bh=3RCR3EW167wenSzIHCADMFxSg5yEEbWC6BJb0Coo1HE=;
	h=To:Subject:From:Date:From;
	b=V2wkdo1kNDc3erX6meHt5CDE1I33ulLIOj3HJxae/8SnUBxquUgQt1RArLfORkTFz
	 Eatjic98cEIbdjKyAxHs3MOqM9an2vhAEE2ZN01K/jAR9wvMii+4wTNlFK1ScUfbPA
	 PqUKoCVv6cim6EUV8d9SsDZdfh1TxehA//+zlMJ78uT8AWl/5X2P9svXptbWcIDBCz
	 3itl+vPDeeSqT5XG1RrikaeB83Y42Du/uKJf+n0ok6fq1VLJaUrIQUfx4yEjpFdY12
	 8LyH1u1oe35po4QMc3OAb+hMIDwdtho6gZWItOY4BuxaBUBcV4sxY6FOyrIaYiCfNq
	 cyTN82XnkQv8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56952ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166287605333.9492.1094051688648981056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a02c8b7cfd75f0c2f76bf762ae24aaeb000941b28b6aa52dac470cd412dfe35e
Date: Sun, 11 Sep 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662876053
