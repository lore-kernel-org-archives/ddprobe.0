Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49F47C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 04:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F7BBC433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 04:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661745652;
	bh=v9FvAkzNjGcXXMqxv7X3XjQxWP/KJtAm59ZUd8aOPSw=;
	h=To:Subject:From:Date:From;
	b=uE1mGXBW6fft9Cgumaj1AGc44E+2tJ+iwSqIXJVqyu5Sj1elWfU2h2GEoEQGV30XL
	 MjfkU6beGzYLLgJu3AuGAK5j7FtSPRKpME+cVrIbSF8XVRwc4cLMFt57yUwAB7ocAb
	 IweZEoBezWXHP8H0IPJcTvUgpRxExsul+AD6SCQP6iMD1CaiP54TjDhENajbeLKrKw
	 6eHa8NiKKaaiF0IcwfZkdW4C8WHFJtnpQ01jKYC/Sx8bnv1uuFyaGXcGTQKrXYjeAa
	 PFG1Ij/0sdXye968AjpFSU+W0l+jaGsVbtLul4ajenY5bhwSBQ5qbXMMXzpowdBDxB
	 doXEJhGqXZUIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64EFCECAAA2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 04:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166174565240.9657.12287937303179752325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cecf0b39c7bead0e4f251916001170226fba34e787dffeb593d522fed632aa9c
Date: Mon, 29 Aug 2022 04:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661745652
