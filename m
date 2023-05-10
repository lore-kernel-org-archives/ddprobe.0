Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1EC373
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 03:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A10C433D2
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 03:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683689465;
	bh=1pR8eFw8Fg7/6R91kX8prDgC6yk+FdWp3Rq9OKP3nqg=;
	h=To:Subject:From:Date:From;
	b=Ec+iIW3zPm+Q0ShnbBXrmanj1BduoCBLmsh+k8E/dyY8FYBf4rXIU5FER7zHJf8pM
	 lFHniVp907Gk6sNlmtJ4PSHnEPhdjdltgWjFpgcl72l+8y+652teQjzfSs2rs8DFp4
	 /noY/pA+1XPI+dcEu+f2tWMly3QLlPeVOHPP9kTbNUVrVibU4V2nc3XidteOaDqyJV
	 DfdK8Q6YaLQpggR86wmp2t4HIBdj7U3C00rmO/Fc+t2mC3uVdSYxhvQNZCOrK/NUTy
	 tJX1Id4RofVheOCnB+lyTwXsye+E8hOu7wh2AZ/fw/GgkUXHGtxLysm1uJwwdmZ62b
	 Nz+mYt5O6qB2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBFDFC77B7D
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 03:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168368946576.15461.1951049301328824336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0d68df17f365af38a0c06541fcf7117575b40637fec1989840213a845f906bb
Date: Wed, 10 May 2023 03:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683689465
