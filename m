Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE44A42
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF64C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669799454;
	bh=PktRh8+GYwZxJCqxJcYtzP2I8Fp9q8CBh9J8Rv0vltA=;
	h=To:Subject:From:Date:From;
	b=pRcYdwmZEywsoc/cda3PI+vHvXvUoTz9HccnCuv3oWjltLRK79HYaTyU6LXsatK0H
	 jPs6POxIQnQx4y1kvj3XqXdHzF9DbKVVVjPS5SZAhCW4zJgVdbqwKa6KR95QE6TVee
	 cd5HOdLRDZj+kX/98NY838w/WOr0HSvd0bJ++K1LFQZ+JoKIvKWRrhrJNYtyZW2toU
	 oVv9frx7ZEU6wlU3O8GGf9MyA2mZ6FkwtGJFMpSQw0SORxZs8Cqblv1OLu0/LIWLvF
	 ufpkT19BoP20K5IH7a7qinst60+u4E7KpOARAyZ9oq4uQXRFoU18LJx8W4mO1g12cc
	 mxxkQM5k/7U6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FDFCC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166979945437.2678.12169665257957751718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce065234b8e8b88d804655ba84d00c6768b5e82ef99635f0df2d7bf02875d8c3
Date: Wed, 30 Nov 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669799454
