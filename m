Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66531154BD
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 21:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FC5C433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 21:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689023228;
	bh=rRzgWMnxdxnVKOXlXWZK34Sq+LFWAX78Ri4mOu4KOws=;
	h=To:Subject:From:Date:From;
	b=Dd7Ntj4ghjbet/S9Ej5Y2aekh7HFDo2QIzzJAcFZeZHJpi9wotUBKNhWO6rR9muT7
	 7jJZohG7CX3qxEk3ktepbQVoegSABCN6TWW+OW1GSD9QWrYZw4JRqQ6iPkMz010wg7
	 8etmAB9DGiNDRzoJZM6lfYU3xejnLMAjVUT8Rgxwoci2vAqlLsMPDjzTAj0E4QthgP
	 ttNrFvhvhAN0wfDJgg4gkm0wcbEBWz8FdosxRpOHLiPyP2UzmrgyCJ7zvYLL0IYceE
	 zlX3Bfgu01Jj7Wav0YWedYGbB2rfmn1KqzJ6DXRL2eH++0kpdcUaSCHRNlUEMm2Xc5
	 guJznHoTM4waA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E70EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 21:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168902322870.32513.15405186193612452227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cffc3ebb54015be8eae27c16cb1adeb7e85245cb714d15e427bfb14ca07ff28e
Date: Mon, 10 Jul 2023 21:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689023228
