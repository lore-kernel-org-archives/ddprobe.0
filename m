Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6EC126BF7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 13:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779628954; cv=none; b=GwcMkfh1JP+vDgv1r2Ti0BtnzgdPF2eK7Q+9GNslQxjiVCgf1BE4nM4yLk0QcDNYk7Nb0dJByVrXPL1nrszKNjfJwZtF+1X7pbCboWMFcI+gHKWUXXdOX4nCghFBcpowoH4glivlPeLRo3lg8j7SmX8yE35Bd/AmZy4NwbQQNYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779628954; c=relaxed/simple;
	bh=5jRqL1L5vFPA3Pvs5ZcfA+dHljkMg42BOKASjKLV8z4=;
	h=To:Subject:From:Message-Id:Date; b=dXigybhEb2SamORtCIg6wA61vwjOz7SFK2QMntq/vv/Jlai/Ea+GWrMQARIXSBQqnXdP6arw+pVdCkngHPUNEtuP3eqqvYZUixABb7vUyaLkXSkGnjnlLEeL/QCEQ5NCqpcoDhZJ4EqExoTLTrMPyeVOHbd15if6jfZRMaI/Xnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9s3AJoE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9s3AJoE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3428C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 13:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779628953;
	bh=5jRqL1L5vFPA3Pvs5ZcfA+dHljkMg42BOKASjKLV8z4=;
	h=To:Subject:From:Date:From;
	b=p9s3AJoEcTHrWkpRmQ0t8zDW+gx8gLING/pTYapTUESQXX+Ddz/XW2WiZrmWRrFfA
	 0t14RG0uOLTH8GNhWD3ltr7ne9egoCoryg1ohjB99pBKbpMHOaJnt5rUds71gqh61d
	 R3fWlM5t6YN8P1GUry9zRnUh4Lk4BMf5Oc8ytJep19CgOmJaLM3wseZ4F4GqcTH6eE
	 cT+9fRcsBEdM8DWvdzf7l0DdiKEGeRUDoSwlh/zi+7zQhOAPMRLm/CoZuixewlCsyt
	 rnIQTIlKnbBZnWTxzNrpTzjMWNcuTxbacQvUZ5GbxbL5DWgAfv4khyQHDTI8s5gsKv
	 13bAxIacA9QsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA178CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 13:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177962895368.24361.2153417319163698919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fd9ef4f66922b874924b7be169542038dad4ccb2b3beab6f19c4ca46ba2c5c6
Date: Sun, 24 May 2026 13:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779628953
