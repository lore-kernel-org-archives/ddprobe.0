Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BFDEACE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735712154; cv=none; b=ZYnK0/p29Iz3hlasfZX8AVFE8CAD4Dx7Peb2mHSHUJ0Hq080DxXjgAWmZ3GEAhV5ZT4Ou/a3y+n83tOVcQ5QvsgFvMA91wiz3iO2+OgJoJ6+OygWrOZmwgdHk/XHZnE+lGTBK/jYrE5nMRJpcYLw8hgu9z1sVWYmIyUwGYoUn1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735712154; c=relaxed/simple;
	bh=54W0C/mVfMyWmiRl+DV4VbLnNXQFn3dd3yOZ1vND/FU=;
	h=To:Subject:From:Message-Id:Date; b=aaC+pqojjaN8jnPEPupyiife0HECDDyoKAVLt7eTZnADXF5o+Nq8JVOr1G5Ns8tke3sFqltqmN6LI4IDl/5MyQlGiTw5VOW6N5VQrNvQgjGjIOE+3pi9E3FvbilVl4ttbf1/dh+mILMwBeDNdOtZ6EkdZMYcNlbyivjvWca5dPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEQ3N2qj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEQ3N2qj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17F4C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735712153;
	bh=54W0C/mVfMyWmiRl+DV4VbLnNXQFn3dd3yOZ1vND/FU=;
	h=To:Subject:From:Date:From;
	b=FEQ3N2qj7kTxcmLzkHLvJznASuulc4lkRMiyYm0O2kcgLgb7CIA8ih8qrshC9sdb/
	 6jHmRW762MnfF31kKznY1ebygxh8xB3xaIIJK8lk9NDMijizI6DehzWPsnbtVf727w
	 Ouvtzq2Kz3Jo8e4wjOPqhdFvJo1vWTIPtq9eTmqkEWcCBNDA9IkHphG0oi91Hbf1zp
	 tTJWCPolsi2bzJSo1QyJvJbA7f59ED2H6EppE8t9FRgCBGhwnJVYEbEtsN110h6kQ7
	 xolDuLN1bIESUYzo57s+KOpoAdHElJCT67vsRZMLxeyZOojaM5koW3l3ebSd9XLj3f
	 PRDKhH7dp41dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB62E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173571215361.22926.7228917064602601789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f31c0fbec231dc222c0d872106d36f072e4b002f38bca786322836ad0940e671
Date: Wed, 01 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735712153
