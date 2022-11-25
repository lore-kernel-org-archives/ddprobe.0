Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6CF515B0
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79FE2C433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669357854;
	bh=fj41k+F6/Xtqs/S4/Z+UO1otfzUm/EHDFOol1oP733A=;
	h=To:Subject:From:Date:From;
	b=umMLH68QsOfPP/V18yHsxqS0sTAOeZKfplttVqXBK2fjoUAtaGyO3XGLToPbwBdOl
	 5+OpIPIsZ6r74gSgEbbHQzNIAxeP+vMY0j9LKyOqg1o6HPc89uL8zfbpBCX8Glbufd
	 yjh0wQqpgjhKnr1nSSJl/G1ofINfVXAc07o6EeEPVnjmrI8QBNfHFdWkX9GBMWMlCe
	 sWrtxexLiFPNdMgrLtVI3T0bA0Y9zxelwLKg8Ga9E4kLPD72U1iOLyTOEVuMyMB1t2
	 ESHZ7ikEdvgzuhl5hq4y5Z8E6qH5oLpuh85UgvSx3NKAbeYmYkAAPvcqhJYO1R/bMy
	 lpF/Pd7sp7SvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E746C433FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166935785435.4795.472126218226755216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08fa1478aae74bc81d6d080eacee7188258ba21c3e7c315cb0d9fce4f8f10fe6
Date: Fri, 25 Nov 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669357854
