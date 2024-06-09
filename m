Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507472230F
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 18:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717958243; cv=none; b=QRLfrShLHylZGdzybdfaZ+pzDFixJc4DIBOK1C9QpzGmAjoHRWUSmVVb4ecVZmcDbx+uDrwGO+3WzZhf2iavp94r/ajxZBDdEyGDPEyUm+yVL+Fxh6WSevezFk+dJv280y/MpggXhjR+Xcks87mCtGyEVEfWZtfRnADTCHi8IyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717958243; c=relaxed/simple;
	bh=GfPoyQyx6zTXKXx8s3N+vc/wTg6cGeQlzX5s/lYe2EI=;
	h=To:Subject:From:Message-Id:Date; b=thcQ9cHUVlPdJKn6Q5W3IpKf9tVguZeWFjkVX+sO5ROTpC8mWCuTU0rMnS6H3Wj8EKIlDlopN/xIlNloyBmnbXGnBaLERhTh7RRNk9IiVStX+yi5H5NrBdY11hJpLq798l2k/okF+qLnAFjCp9/mlQh3WzA5eoEuJQxU1CyvDtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIIWxitR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIIWxitR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF80AC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 18:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717958242;
	bh=GfPoyQyx6zTXKXx8s3N+vc/wTg6cGeQlzX5s/lYe2EI=;
	h=To:Subject:From:Date:From;
	b=dIIWxitRJTftqMJwjqc+0qTeOuAWrPKCrAXPxQEBYpCl+X4B8ltU8AQvFeVECg3WO
	 vn/1gkLb0FxJfbn0D/GwtP6u8kHvhAJeijkqVZyPmiJKKWN8Z7m8rSsfCX69LouJqR
	 GFEQ0Vr8XMQwD/ZT7m2CQ1T53nti/taRI131qDTlgwPqsByQEBDLca9Bow0QAZmCTd
	 hUkqaJs1SQ5wpvKuwYhnrgoPFON/hrqNQGJg8KznnBgBbvSTQN9DKjT3R+OimZuePJ
	 mEZpd1xONRQnw9HkX1X1YaX/VMmZMtkYEyFpnD9aGuzMSY5Yx2wuanilqBzVfPVESo
	 hDeGZDIx5g5Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC745C27C55
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 18:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171795824276.18257.12352208941319522959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce14f35bf433f3efc6331480ee812561e1247705a0d6e245478909a461c383e
Date: Sun, 09 Jun 2024 18:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717958242
