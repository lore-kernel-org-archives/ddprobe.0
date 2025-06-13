Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3704B1FA15E
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749844794; cv=none; b=GgRCxHVWCcxc+N82hwVXI/XLX3v0mknPARJB/TqrFpIxWwYDxeLnjVhhaVtfPC4WjzZEyOIvFFSa2rTiQKFV391I5m1p6oBs8w2mtwYIdIxcQtLHWHWkqhF16ilNbe+w/9+pXuyM26xvVFw3DhrUfzFGmgqGJNGDbWvC+lFZbgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749844794; c=relaxed/simple;
	bh=zWtgy/e2pAr5w9z+uEzDKmBLuooEEHA8siCNGcEVcVA=;
	h=To:Subject:From:Message-Id:Date; b=ikv3eOqPTdz64yq5iySyCrXj9irirQDlY4NUnkmPinQFPAjFXNDbq8GkjK6LeaW5PgIbrMrVz0kiFzJOBk333oFuWrKVpYFZbYbMA4NxzEoRfBw25u/XzKqJRE7Z0I7RpUa1jYVBEE1v+hzA5q+VWKOuWDD/VSF5qO27gD4Jkpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBzDY1+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBzDY1+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D68C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749844793;
	bh=zWtgy/e2pAr5w9z+uEzDKmBLuooEEHA8siCNGcEVcVA=;
	h=To:Subject:From:Date:From;
	b=MBzDY1+/iz7bFPUVf7O7C2EUevYa+O1MI3G88kP7YIrlUQvBgo2wMn4hpgG8BlpFS
	 A5Q0TBHTSvRU4cKMrQQQs4JF7V+lH4v0W1CVMynw4FCO3HYibOfIOo+9FL18HRW+TE
	 m6NIIbzO35wQsOzTacKS1Z3GQkFbzQPjFOConENXnw7SZcfOUfrYNjbtIbK4QLGo5r
	 8oszk17qq7XlHG8xHv74xMXBNXAuTXbvU6mK6fpudWEOkxDCcojb/3SAvhDB6hVp/e
	 s0s62+UtUJxOJzJ+hCivJXaxHoOgruq3qc5qvSvzungUo74Bcm8lifQWDgyPCbAtej
	 Ye7+vWNKDKLlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E15C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174984479360.24443.17141862247661030849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119474558f0cf38ec8d12cfff25926658043673bb14cab15f245ac0d26dd2737
Date: Fri, 13 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749844793
