Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1D928FD
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712778497; cv=none; b=JmbUcxe9EpQszlz7+qalAjHWyibl3urhi/ykob8Zzw3fFIOPiqhIcJbTeKrAwL8g32q1E3KM9WeNSHlRsW11aI3giZokMuevS0ENWm0L4ZFBNySvJzefUfUbcIB7dKIikXr4uFxgHjasDv/3GIsv0CG3SKEmK+eibnosGV05R0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712778497; c=relaxed/simple;
	bh=8/wbzDaXoQ0Nc0+1rYhXqvfL48dCIEQlwRBFA/BQWAE=;
	h=To:Subject:From:Message-Id:Date; b=UBfXn36F8vkMRNm3S5TKih4Z3ymjbGLoxmvM+ESOI/SKd8LUn2PgszQEqpmdt8kIjokUIOPRrRytvRswzAkF0XG/P3EJ3dzfNkXW7GU2m+ZKSF0rIgtNlEQoluOZhB6smvu4/YuhheUbypxiy0R8WNg5v2F1Am/8yxdEjFVKhz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkA5nxIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkA5nxIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 888F2C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712778496;
	bh=8/wbzDaXoQ0Nc0+1rYhXqvfL48dCIEQlwRBFA/BQWAE=;
	h=To:Subject:From:Date:From;
	b=VkA5nxIpAF/T/T03j6CfRomAyewiGE6M6RpgcYt+cGNqvwvtCPaDenhOc1BqSj13A
	 rGH1TK8eZJDvcLNj2ArlhocK1EVoJYN2u4O7f1lBzFemTkQgszgxeIA0MPhl9cI+Xj
	 DeChX8S6HmnYxKnZ+aAcIr4G1rUnc6qhrpx1piPxP1SNg6ilQNUiiOlnfHRKn1xOIc
	 zHcyiW4sN3Qp+G/NkzONwZf0kFc2X3dGIZvbMs9iWxuh2HwP7X8AvMYt0JOqKbsGgY
	 Jj7L96YU1EmykErEhH6d9pUPpbz2wix/RtwjBsabK04sED2TTfDt6md/ueN7kGqA/q
	 c56LQXO4FsbOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 767F3CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171277849647.14774.9972279581281611588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db29524b4047659daf26c9dbf34613091cfc9f0627038156f047ee4021613e17
Date: Wed, 10 Apr 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712778496
