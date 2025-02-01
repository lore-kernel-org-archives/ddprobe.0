Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5876C147C86
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738451754; cv=none; b=B7cIR7XsSbuHHPRANHG/Bfg2cc7c2HE7+UQBqmka+wC9rhwNWQaUhWkFu6+h2En6CEv9DUsYPGrMVAG1YNiYzVSu/HtnfW8beXcey5Ui0zr1Kp33G5P5gMQcXoNKux0GUi4XMCwc53QMOlslgYQ78LNw8VksbL79INEfTZHrMXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738451754; c=relaxed/simple;
	bh=la85o4yBvjuXrZCSgdohkmADZghzMgL5T4U6DOPOGm8=;
	h=To:Subject:From:Message-Id:Date; b=l+H4U7D75TehdFDM25BW/XTOHT3HvGWvE7TiB9n1IcSeqdXa18djigAaeqiJVkADtXQvIPczwNgQLvz270HtkluJW7veCo60bAcexo+mdyyAZDRbmRnxMtAtQNNdynxIhP5sGvJJntxggHM3duAD+21twsHBMJjWDJ/h/NTtUI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4Gp3oU6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4Gp3oU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5070C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738451753;
	bh=la85o4yBvjuXrZCSgdohkmADZghzMgL5T4U6DOPOGm8=;
	h=To:Subject:From:Date:From;
	b=j4Gp3oU658j4yaPGq648u/PuYAi0UEc6KD7iJDQkBVstN/58Gw1x3Y2dFOUKCHzr2
	 m2NfioGFnDi9xamWTqDTBupnVUqwzmM7/dYlxTutBn37j5YNu9RInWRhpyDIPo03u0
	 kBsjPzycOte97iTgFVp3sCp2mfCuj4iIQYh+3Utw1Wk10cY6UddFD/r1k1p0gsTNz+
	 IkGz4BXAsTk4l2HJYPj5gVmicT++x/Tqd6y3cSF2KoZe6tVJh+zR50ec/2fyNzhjQ9
	 35XjjvEyc6baBnmkHXwNbhhRbG3bynBSaJBl9K1uewB1Ii4OAbY5zPO0SvPD8GyPL1
	 8gqNLksnMEnmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997F3C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173845175359.12670.11967660545240905114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb9262bf8c3ee9232bbfe2e695ee7e91b6a99722a3298c1fdf1fdd9afe8cf55
Date: Sat, 01 Feb 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738451753
