Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3342521A443
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751082594; cv=none; b=dFc3z7ugt7u1w8MJH8l9jt+qN5Nb78ayR05KdMTw11lBX8XPwEbge8AGAiR2gkzX1gjpjcdTKkxDcYNl0DgqdgBIK8CuxFbqpjhh2Z6H2Kl33u+TsHMlF7UpFQQZQjKBQAY5wLw9VPedpOxjPsJNCnUmS0F5nNNuU55s0A4CALo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751082594; c=relaxed/simple;
	bh=/nuYzx2SrcRAzenYMG9uTcNXLXc/EZPnFGw/Kia8gkA=;
	h=To:Subject:From:Message-Id:Date; b=YYuJqVOhb6SI/bq9B2zanCq0jFQGHb3Fw1N1QVpqcbVnEbXxVn23GF0G7Tp1qF/HmOo4h6q93Wtwr6uG1gU45BJvKseVRUIghoImhSbQquz77RaLWNKp1b9CFYF1zw4eD5MBZ8iAJyjLdsQNj0hWdyYyKZ1EhBFNlOYF/fpBdP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9R7oywq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9R7oywq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4A9C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751082593;
	bh=/nuYzx2SrcRAzenYMG9uTcNXLXc/EZPnFGw/Kia8gkA=;
	h=To:Subject:From:Date:From;
	b=V9R7oywqZ9CGuGy5/nM8YJTx03Faua8sArxAFr02LdeaHAesMxFeECAsKIuIezhxV
	 4W/1sTHKDZAUrsGd+ZZ96Imrq82xPDZ9FOcUJprqY3Du+ZFoiInCkxgalz4DZBqDVX
	 AHTfZTgU0E4I6upZyMknFuKQMJe8DfLGkfd1AD/RKHDWnybkEcUTCe51oRuWcEAxr8
	 8uh+p1XqU7KNyH4Qaj8uSo3i7YP2Mw0Jo39RLQi3Cm8XbAOFCjlKpePJJ8500RYSVX
	 QvLaj2uvydMlyJ1TeElTc4oNmOgUhGYhNuUhWdI38SetnF4MZzV235dpp0y4DGrex/
	 OQViZ0DsNg30A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94458C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175108259358.13926.4246950111239835423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 488ea053880f7680b4414de7079cd1f93580f4c7b8b6eb365ee24baee9c7af3b
Date: Sat, 28 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751082593
