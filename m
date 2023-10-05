Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CB13374FB
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 17:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmbwZGf1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06434C433C7
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 17:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696528029;
	bh=nemaWfkkT94ZEBzsElT8JL6dbOZ2RAsIhx7yzGhGhHM=;
	h=To:Subject:From:Date:From;
	b=nmbwZGf12baBz2RwikNroAqHnST0ZmmnHQQdQExYhpIf2m9w9z/2dbN954eD8nl6H
	 JVzCFg3fuTUYrfgQFuIXwSm3pSpVBhzRcHCJDG4HKJbYjpeYmRJVbUSytofPx+Jkne
	 SHepDYSO5yPeqqAtgRFuI9JCp6vmKuxH578ChjkitoUH18uZXhQ6CpAuY2XFFDOasG
	 8i9HBkEpKxGCxelw9nHj8H1YQbiyJ0BvExVE8eX30YD7jSLg5R5JEeWkzpW3ydccjt
	 sv9we0J7RetzqGi23QzrsML89Te0X3UmhIQBe/Ukpj/Y6x61jI0r2xz3ka4toL4URN
	 vw5MDbZLFGd1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0576E9271B
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 17:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169652802883.13739.9053477744545575761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecc24dce1ba2678aedfff8cac1d265ef467e5817cf0ad44c4f14e2cda8dcb882
Date: Thu, 05 Oct 2023 17:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696528028
