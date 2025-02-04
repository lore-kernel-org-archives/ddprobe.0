Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5210725A634
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738660554; cv=none; b=RGP1NFJj085UQ+/3rsjy9OyZ9/bBT7D+YeSr+8oqhK07pcygwDkUrdH+04Il8zTatJC8dp/6n91oZtJQVmIygVWwi181q04EQSe3JwXxv7+hGvws/mrMU0xVocNeyOcwZdAv5trdvZZiN4OXzmmE+5KDzD0N18O/cQcJEeKD/WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738660554; c=relaxed/simple;
	bh=pVeZj3TQEJZ03rGbLlrEDLX/WrZNUCJZ1yWSpj9li9Y=;
	h=To:Subject:From:Message-Id:Date; b=hAd1psEb7CEwBgAuSWFk2Ac5pHTgJ3Js+ZNh0hnMBTHkDqEn8O1uU3IqyrcPOAkV6Sq/+kU9K6kxg+xXVgIBVQlYX+/spVIkZU4vbgISmXZNz7qDKx6TVU5vlYKEi4B7jnuobTGfIHMtKZ8//9JKGBRdPIwLNCGVbGnHgaYo1dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBo+YPdP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBo+YPdP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB93AC4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738660553;
	bh=pVeZj3TQEJZ03rGbLlrEDLX/WrZNUCJZ1yWSpj9li9Y=;
	h=To:Subject:From:Date:From;
	b=PBo+YPdP9sYOXJIwwAOUc+OXsK+PD46scuvs9CdjVOBVa5uSETjC66xz+S0nguU0v
	 dnt/P791thnENYS3w27dQvGbSsJbOSpmj77EbEjrG5ajoiUx+Z/pLtjRnS9WtryETp
	 ZPF0B/nDOD8ok3hVB92kxNu03FrISp59K6n1XXg8N/khwrKnxxxeK9WO4rfUv7F53B
	 wLw/ipxESK51UD4VbBkbO8mZ9FX2+Hyb1ZmkfRciEeXTljJNDLR6qx52Pc7dgkZb3y
	 m/rMeSiecWxw6Aw5mRJJxVhs1EYzEiLq0mMZWG9+SaeUH5yXMYSqiA9id1heZJyd0Y
	 Y6Ao0iPnpgE8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A6DC0218F
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173866055363.22416.13691634385555705562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e791a7517022c33118db0eada30c817428ec7baa1d43a072302a738edd2583
Date: Tue, 04 Feb 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738660553
