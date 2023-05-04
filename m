Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CBC7C
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 03:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFB7C433D2
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 03:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683170465;
	bh=4STurTxz9rz81N91zvezsVzZaeyVQBKq9ZPbi18x5kM=;
	h=To:Subject:From:Date:From;
	b=JOcxk47dU69M0FhZK3lLi+JSUhDWb1mjBXZG23mhXF0E/OzFHhK9s1hdWHXHOmX1e
	 rxSTMKOktkJwm/uThixOrVgjhbQoCxU/lWef9tHQuyVEnP/mGQz4nXfy6V0Zb3yHMR
	 luc2t6I0FMuIn6E32IIyv8PUxB7T7sC16iqj0GY7umYNgAndGFtTgMjFi1Hy8xw5uJ
	 H9I2vIBhDiy3iOi/IRKNcui88E2kQOptFawybjCv5yQ/hvxoT+/ln8APkQ612VYfLF
	 o1N8xZApZYKMdzcJlDFuMx5iTNfzgsas3P7BL9Opu7nAi1Qqls+Ku/HpG5oYY3uecQ
	 LEufYt32jyntg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14C2C77B75
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 03:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168317046576.28290.83144848268683174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde8518cd25d51dc7d3406d3c4353db6e53e242e62dde55e7cf46a97b782b0b4
Date: Thu, 04 May 2023 03:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683170465
