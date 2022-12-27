Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0360B10E4
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86581C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672144887;
	bh=8PTufsp/tivI5NyOmaYBjX65gmOnlBZIL/0GDc6F/3I=;
	h=To:Subject:From:Date:From;
	b=PvJZKS4RwK4M/rudSuJgNzKZbbBEg3/gpdp7FeQf2aJoF5fOgdFEk8VJi+PpFzwtA
	 FRrYKhJplU41uZNK6JuBJTJ2xxVpOnY6m0Aez2GqL4r9eSJoYDIQcwAcddrtNYEh7s
	 yiXV+s5w3pkbXMW03pVytuGa6r72iK34/boY+aY5e1XQoan0DnIZb18Ho6QIYZgGVx
	 VP50eB9rTOka8NjcqHdzFwgJl7LLjWd6PQABWsWlzEPu5d815NuetmwNbLxoRbMyw9
	 tnim17zynRBWa2NrIVT5mV0JZWKKaLAjwoOBCJDXgJcBhtrwVUN3XXl/+BT6R+ksdi
	 txyDYBaGdQOxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AC3DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167214488742.12223.9209815437841686295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37b4f846020f946d394db0788485256fb067affd6167aca398ab63fc31ee8c9f
Date: Tue, 27 Dec 2022 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672144887
