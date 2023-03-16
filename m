Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402E129A5
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 11:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F34CDC433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 11:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678965006;
	bh=BcfdLeqBkxhuscZ12+NVOl0uybVG20BSOpa+/9EIkyU=;
	h=To:Subject:From:Date:From;
	b=bPqCjevkEOygU41hF1tBVc88PExoBisd6/8ynHe8qRe9tskiyockUUh5/uoPKMK3I
	 AhYmFWQ4rQ9F2jwn9PXlx4bbgErM174WL5XPMnVz59ODNGo43ANLOQu8PccEx03gSi
	 W0vaDmW/j0SfwNzVh6V5EXeOERxAT6oN2reS/aF2lwxWK2fUH1dx5/hyphJPfwOVcG
	 H0uLkZWs8Ooetm52P6ZtwCF3aF8gLwO+UI4bcXw6KpsIoc9uhdc/B0uLuz2QOGTN54
	 H6e43IOqWSRmJRU5Ifx5qTnmdf5amFJvwGTgISpltGJ15pTmwAK1ndFjczPvPDCb6B
	 Gtk9Zq9LOs/fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D88D0C6FD1F
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 11:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167896500587.7467.1552241590378774056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65d220fda7e83efd111873c7753e6c08eb66185bd7374edc9ce7c12248ce33d4
Date: Thu, 16 Mar 2023 11:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678965005
