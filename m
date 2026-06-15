Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E307400E1E
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 16:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781542594; cv=none; b=sO/iCk1dZlUZv6xtQlK9Q72gQCauYmQPwu8hLQQnU4tb0ldbSX4r9TWqTe8IdHlv12718r2F7/ZfyJvVjXyZxGfJv8ebNN28Dqgmb+VK+yqLKNxrVNOdoOwjYK6E72HuQ87KVcy1vw+c9qe4a7GtAAjhbH/58g5z+2ccDtUYIcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781542594; c=relaxed/simple;
	bh=qniT46aOTbDSeM4qw8sKllSsVNkVQKZvky7X5TeBecU=;
	h=To:Subject:From:Message-Id:Date; b=MNkuARC3mxD3xIy+xCy+ZWG3yA3f4JGuTdtOypgAbHoHg/fa9BWhkM5k1QiGn7NnjQyACw7YYcdgzkH+sj4Yy982OGsUDjAPRkz8GbO1ENraDJ5QLVLtW/xjUvJU7uHPrlygzICSb1Ssq4X3NxM2cqhEVjooeltYsZ/5ZFWL6dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ey9RKqsd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ey9RKqsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2579C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 16:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781542593;
	bh=qniT46aOTbDSeM4qw8sKllSsVNkVQKZvky7X5TeBecU=;
	h=To:Subject:From:Date:From;
	b=ey9RKqsdkUWbR5dCM8LFTERCb7dLunMo6WtufZLQCyHXzgOF0ycN6P5OFOyYR7qsR
	 qsYPyRAJ3banlWWhEUqyrQUIg0jOnifFHXje1qmVlIljrDiXWpim6wP0b31KTsQQfi
	 yYWMlmxBJuHF9pTcVwNEgCNNamf/WJXy3Dm6RKl8Zw9Bv+PPJQg/ujeiHOag/CmMOm
	 erf8qliGNIjwDGAWU+LmZeeyNyxV1cCKVUjJoaFbRaX6mhqME2gZrAdmGWmX/6OyLz
	 dY3gunKPQqpifPZwFKgDJ37nrUoqmCZ39n6/KMt78ypcbSfNgpRJkIzUOEx2k/zJfN
	 QwURaUYXxtezQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B137BCD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 16:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178154259369.10219.6574050160624991676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c947d0e1b61b00b8fffc4ce63b65148cd0685aff5dbe650e8cdc4713651c18e
Date: Mon, 15 Jun 2026 16:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781542593
