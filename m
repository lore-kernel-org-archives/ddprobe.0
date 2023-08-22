Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADAF6FA2
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 09:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68E9C433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 09:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692698048;
	bh=goebI2AvS4RSikgfXO87kCqQ5lSQ1Na9/qnO1YOpJzE=;
	h=To:Subject:From:Date:From;
	b=VyxPDxXy5YHVkPe6p2ZkMBW2L6FKptKaGUXiTOiY55+9jdPgKpAawNojzYuvHIQ1u
	 ODM33ANYCoMYos0JYw+gFkbo4ObO8QysFe026Xn2x4ffwCIu70Ul6glRDpfdEakeNV
	 /eb7rB3Bwq1gyvI8X/XOpSP0woJFqim84cYjbpsUvQvIk4p4E6JcUJF42y8tfeBzyn
	 8qfRc4lHRM1YpDZevB5BVV1GQFt3gpuoCiCZe0/7IYY24pNkluZKL58O84Vo0VwVDv
	 AHYF/jkwlyzcrmetqndu65a3kln0b816KhMnnB6PeV79Cq/DjGM2Jr30GkJFFTFpBX
	 Rtfiv1qNhUtMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9646EE49A3
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 09:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169269804874.13399.11714289959236365844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56aee5a8aec52f58400322345cb4eca622b9bff6055b5b452b682f760cffe463
Date: Tue, 22 Aug 2023 09:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692698048
