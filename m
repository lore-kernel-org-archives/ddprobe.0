Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E1DA52
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D245C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665970253;
	bh=Q2stfhM/nD9dG5O7ieId9AZrtJC/OsPbR8xXfmi6oYk=;
	h=To:Subject:From:Date:From;
	b=AyPJZCSc0gRle+U9xhGphwb01TuNjXU4XuACpqF16p1SkMYZyV6b3HuMuhcPqThDM
	 e86hNJtLL8zPtur4CEkDsYTg6OB3Sxn8MdS8XkLRjvdQNpkS/laK0RFJJ8n7n4h4QR
	 /M9snvrYAvGDz7gm9J1u3ppPBSBK1C9kprdu0JR3L6KWHVLG+d/bm/zDgNxJvgyDmF
	 7SdQ4S02++UjcsGt6FUAct1qE2fFJwTLxh4gGgp8ovnQgCG01C3LqHCKsTxCtAIK6A
	 sfpwartpCQZz2jfyvFogcbmIS5WT9ByQuw9mDyqSsIYY4Zq12og+2BmzMuUI4tkpNZ
	 KJQjZ/zo0y7SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59329C433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166597025335.4598.16825562130502270219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52dfbe5f82d5e75e11b9b82c101769c2464ed1a6da9ad47ae969bb9f4e385edc
Date: Mon, 17 Oct 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665970253
