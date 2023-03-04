Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4726A7E
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 23:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7C5C433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 23:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677974225;
	bh=zhbV3fr5VH/MHFwPUgFyaqdmYU633A/o0A7kpxAYVSg=;
	h=To:Subject:From:Date:From;
	b=JxbETGJ7ahzITI4yayhGB8HX4HInuF6XqEYnTC1veP1cF3ogd+keKXzRIK+bgLMBx
	 ocB/1xa6C5kwLTpMhOoReO+o/MJsVjJC+vIVyf+zy/y89EbFYlETXd6cnR+QmzlNyN
	 lmTyIHB3fFnDyOqbZkKBWZE5DPs2LsC/Zxu4nFen9jE0hSUXNxuOzhvHF+/2kbGHVD
	 lenGIKp9z3QzYAVFop5Cu0b1IdUSv9A883Aqzx6fdRE18dzQz6/+GmCxWQZAz8P1YI
	 zFSH3OU1leMxEFxhVTI7bkiSUcITefYnZt7lccMUv8qjUosknJ9BuhXdUu9Gn4exUe
	 tkCxfWh0Gxoyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B97A4C678D5
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 23:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167797422572.23065.8014961147754059688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baec0cc2f90ce6840bfc97ec87c4a34e3d055bccea6f70db8046f3c996fa9ee1
Date: Sat, 04 Mar 2023 23:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677974225
