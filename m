Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4CFE134A1
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTLZDmzp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B5C4C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702894096;
	bh=xkgZSkxGvawZNZYCEr3L9YgpXg5JdbPn4Lo0hpNu40Y=;
	h=To:Subject:From:Date:From;
	b=bTLZDmzp04Kssn3r8N36ZLIIJspJ4AikwZNiMGhLAJXGvWfcyTFcSQXPHcFeKL4cl
	 vAkJgfHCXE8t6k2+um2w4aOLmm3O5bS2S+ZInDRenXmK1lOcuB5FIztjBmjww4zxtD
	 cwwNqHWREum9xdxQkMdCnVg3LZPtDbIlQmEk17P6uIobs8rja/l7wQwtl2QtLc2bbP
	 qerjzh0ASU2lrAGDafzYLAIjOHaYa8z2aNUAVJyRlKqaoxaA408I3Epfya6D7ri+st
	 NUBX061+T5Z3WtoHh8yEwO/BWA0l6zIVVMc4mbmfNX96wF5TXNfJqMq9twxbc/FiT1
	 lScpGO4c6GJLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60269C35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170289409638.17602.15620320265220528887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d04115502cc3bcf4638948c19ce88fc22b1352b623f2af02620e7393dc726033
Date: Mon, 18 Dec 2023 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702894096
