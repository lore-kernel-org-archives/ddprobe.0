Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460AF2597
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 13:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E74C6C433EF
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 13:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682862965;
	bh=LjOHCYvZqOg0MDnXduxIRqU1Ed5i1BmfwpM1N8cZ0hc=;
	h=To:Subject:From:Date:From;
	b=n24nBy9V14QuhrjtQKbZm8pNAoFfTJoxO+lfKjSx2PSaFlDI2jMTZ8MC/u52fo9MK
	 QsSya3GMRWf+M2bOb0etlsSw3IHqYxNIXqRL0jQKL+Cp1fmFQJE1izMeYy2myZlxFR
	 s5zitY3Zy5EnyMwxmBguJFTZ4shphQRWTuleDZGzWUM2WdmZypz+pz/lftlFMklFF1
	 kRJglUecXSSdxXcQtnUtWBItRVMgYJHAbjpdMCWQjDoPVdg13jGnRKZbTEOHYwPkp7
	 LQhYXvl2HVDeBoGbBJQQ7aRJCLd3sZZTGr7CrsSE08LfNiQG2ZuoT7riU94Inc5HYk
	 ZTJpGgOquHKLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C37CCC77B60
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 13:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168286296576.24356.5192356769790620470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94ac01e3debd33e37d152af9a91d34fa4d763dc587d4b3f47420be2fd6418654
Date: Sun, 30 Apr 2023 13:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682862965
