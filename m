Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB932C9D
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 05:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717910243; cv=none; b=n+MwnWKaRCU8uzkpdw4G6/Oe1jAbw66nw3czRjQRiR6h0K9JgHDyVR3lHJohbzARWx4a7w7o3+pboRCPQI5H0vyYVlzXvT/+UgsVyvsyvKXYvrq8oQPr0WnGX6Qi6CqiS6/GqYRHqgku8Fy2ZgbdoN4DQBQOMzsAVQgifuNJfbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717910243; c=relaxed/simple;
	bh=y1q+QixgyvTN7/keix7CksZXlnc0N98ikFmHfPHxeJk=;
	h=To:Subject:From:Message-Id:Date; b=M2EUjRhxM+atJw8RB17LdVzPVF1yzXpU5VcJP/BRvnFHtVZXDpMPGaq5obRnncCwFH5amZKryBrimk+jhcOkjdzE6gty2eX9SVfw4lK/i2qrVzXdZI+OnUVEzpOqs4h/qEf4cjsp0lRiMHpAIORL7rXJ/GHZvQbCQ1jQSiSy+AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKbulGU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKbulGU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0AAC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 05:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717910242;
	bh=y1q+QixgyvTN7/keix7CksZXlnc0N98ikFmHfPHxeJk=;
	h=To:Subject:From:Date:From;
	b=eKbulGU5G7JBPfX6njccsjmz3n5xWkPAsscX69Zg4u0G8KvzECc3c23XToioItoy2
	 zhrOQ3E4fisWLVHZC7gLm025wZm4S2JOvfkkyUKQIGwGdgGihxqSiiUbNHzpKdTsna
	 4exhnEc+zGIZvdZBIF+rl+7iQ9rll8K+7sNupBrCnfQcVyfb2FZ3Q7F9S6C2qfOihi
	 z4/o2meLl2mGasOmI9sFrGijz9Ab1J3PL1gXc6p6MWBYPn6ueEoR8Kt+TZ0nEsWlaX
	 zMFN6OWPjyL4k7uzuYtKYFxpj9o9ow8TEuuIhQtbq+5qdqgA3zRZG/TtqAD88riLTV
	 9d2dBmYn/kaGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2727C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 05:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171791024276.23264.10216008285291577084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c28e80f1754f93bd2006381414b237137e8493e57ab9124bd5e73526bb94ae81
Date: Sun, 09 Jun 2024 05:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717910242
