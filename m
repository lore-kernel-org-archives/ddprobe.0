Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B747EA
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 01:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B73C433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 01:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681523585;
	bh=QeY1kRMOlFPPdDznqQwzFcl+kcWvLrjhDKn4/eZ1R28=;
	h=To:Subject:From:Date:From;
	b=coet1RvQxexXGxkqLqnKpuMbrxKf1przDXrXYjgoyZqP2kPa8WtiogTUoXa/+4Yqo
	 BuvjcdLApTiOx0IVQgN4U1C6lWBv7WflxQ96Q3fTvL6hl3aYQAaTW+v/JHYQ5KmzrE
	 YM5YpaxU7Vw774Boq/rLK5rnAslIlbV30kpjmKju5dE8C+f5sUa9KZWsz0hTPi+ogn
	 r0QUwjaP4PEwjuiwLa14rIid5MMRXMDJxiyp2aYgQ0od69Qlh4y+RCQWU27wB4K5oJ
	 O1eqJBLbqX2+4bttb6E+SlvYZ9bi6L9GoIKOsalKkBu44B9bB4Hbs4ED3VJZO8sOKs
	 gfhivi1pqH6Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAC7C77B72
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 01:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168152358573.14867.11603751149650876590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e02890ae1f2204b2d623effd87627b749e53d92d1c3f1065607f9d9efb50a5
Date: Sat, 15 Apr 2023 01:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681523585
