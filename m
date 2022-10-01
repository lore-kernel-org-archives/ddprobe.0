Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF5743211
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 797C4C433D7
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664661053;
	bh=puH5qPleBc0qePRVX9iyJaCZmZs3lm6tHlmuLkqo21w=;
	h=To:Subject:From:Date:From;
	b=ehsb1EsfmO1qs950Nev7t1/5FTP27dmCdHL84Im9ftdOLl05qHHiLlPUMFtJnY7zX
	 6G1LcpQdtUXrnh7EFGZ4efR07xz1RD1EfSy4uQp7m0wP0c3OYpITTYzraKqenvcgut
	 bAyahLke1Bln24wmphdE90ewsvM/0glz55LrrJvgxcalP8WXH7JuQX3M6eg9CMGSpH
	 qPHZ495bG/K9HwIFO9IbvORn8a06t94wfmvRkC+ZzSbYdjNWB6FsLkbrNHOPB4Pvp2
	 SyBbJkLe2oEkRaSQf3eh3kO9myAGNt50mtJpog31dKjbWkChQP2ZHUYxY90OGuyVw4
	 laXk0xBZZR1hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59AEAC433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166466105333.17989.2161820037442089383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 300ba0cb54c74c3944e7b841deb578c661c8ce6ca91c7f84f9d48d3ed0b8c659
Date: Sat, 01 Oct 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664661053
