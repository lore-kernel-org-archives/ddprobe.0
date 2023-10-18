Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F89618649
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 19:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRoIz7/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 058CBC433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 19:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697657293;
	bh=NPxGQF81bJDA5lKi0JHVDWHwXa+Pdebzr9xvvGjAPIE=;
	h=To:Subject:From:Date:From;
	b=GRoIz7/2sgTrtHoZmBp2+MvmRgJWMAOixrNRaF7IU6eFA5sbBNe6fsfbE74dnEW/r
	 O6RZp8Yyf3Mo7EhrdMIt/1wyanPE4cGdbueVle5YN0Q5tFSj5DHEZqaK0IquRf1SJx
	 qQRp3e3y5tcO9Ztg2zIhSeNPi8fqmyTLowDhusRXR68tmxcRaGqZIFX8Zc0Fl5fDf9
	 9oMBdz4trPgS6GD1v7llWrBMijlWuhgCa41tjionbHN6JrM7FOR3hwApuK4/obSdE1
	 NTU+bnXi37MeUln+kRgI3GzEWzfwm1VVescFU3nJBxQT3esRVvU42ohrDkVX9oIJ4J
	 DZg1BGfhn669A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB363CDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 19:28:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169765729288.16187.5815588447705020845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a51cde1012a67a68ef4ffbd3c1ff3f75bba97ab46b5c304f664d388c06d0df13
Date: Wed, 18 Oct 2023 19:28:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697657292
