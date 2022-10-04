Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C77D920F7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70671C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664869253;
	bh=rwFwpzmd0tuxRKEPZi71987PcG+Qgrr9f9Gm2cg5PXk=;
	h=To:Subject:From:Date:From;
	b=GIuLxeP3CpyitOTFkeuOBJ4Quib7WIq576nycLBisVWy14a3HSqfAGOhb2FKh7Kb6
	 PvvzDMBo5Cjnu66aiiBreVNpuT0g+Rb1N+QeJkVH8Xaf0LH65YcBNnd5dBbZCHxE0r
	 UCnx/lHoosmiz1WQE39n9IaH1CgH9I/G7UzfOBqGpiY81v72ChXN8zGHRoMYhRbWVT
	 gujNPJMkvjw9t4Y9GvvDn1AR4XVqltZBKJVSYsAfajlOxTNiONGS3OTfkqosjcKMmL
	 tEsM3cq+IFRkBr2c+W4GV3EpHV7n7n/juZMExPrM8chkAaCgEaDnOVT58zuS1P+4CJ
	 7Cp5ZFOvKliZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E3BC433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166486925333.6359.4615902796556931648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49616ebc456c03b84b39881cbc7a7277f625cd3550cefd976d1d0a220fadb433
Date: Tue, 04 Oct 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664869253
