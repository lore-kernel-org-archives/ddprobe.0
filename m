Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDA720FE
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 13:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE164C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 13:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674222125;
	bh=DMYYkNpsKWhVyZRIy06J/frgFvbnGszU97LveavWUpc=;
	h=To:Subject:From:Date:From;
	b=bvAWrOzl70K4kuWUZFiK9mskjGNUWe+fZYP3xhvk1dd84weuKVJg+kF4unxBOPGgY
	 KRS+GXW3Hg44LTjqKSLJAjK1fT9rDmybmAbthuh7auXVRIF8nIajPRbU3+9xG15q9H
	 Cnqfn5OWdfoZfpEvGrI3ki3A3QqAheBzbNWE7iU+RLsmAaaBIExM0RiFX9Ql1V/+jE
	 3UulJysTYfBi+nQ84lvm6FET0W2tydZ7daE4mC1tGx4xC7x9LHRSm2hUBgphATj6Sq
	 stKkYqoJFMMZZlX6y4ZYDcFjkB3N1FEE6Jj24hzLzjCuNoZuBB81T5oJdSi9FfqNAJ
	 aqEo/H6spu93w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AFCC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 13:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167422212578.3185.1487809670858252321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6212258c30e99942396d5f216cd491b853a1d7511fac390e8dca2fd537831d6d
Date: Fri, 20 Jan 2023 13:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674222125
