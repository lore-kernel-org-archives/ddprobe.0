Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D7632D7F9
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770330834; cv=none; b=MUcNw7gA9UH5eRPdufaXUz4aOyPgYi9L122SIJyUp3KWUeJjVnqSNVH6G+zLMoOXotnNGC+kH3G5bAHDiG/b45CB3wZIcbpkOwtugOZQE72MZz7fqe+90qKcc482rJJNGwnNQfblNuhlhBYwGGLzsxWENO3AKqwX/kMehGB6lB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770330834; c=relaxed/simple;
	bh=sjJSJ0nJ0+OJb9QKz16epCdb7lh23jY04XqQjoYaa8g=;
	h=To:Subject:From:Message-Id:Date; b=UZ1HajuUjI9F7ZC0WBJDWYniRt35niTtxOeZkGqetk7MLKj7eIfglC7K8VgG7movPaT/5jU65KPOYnHr90a0P03dDQDISkzPv+acqISbDl2Tz0SXmHcvKei3JR+l+IbmURuuhx+uui99cX2z+1fMN7JJgApCX5xReY8I7sWZIQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6OO3FDf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6OO3FDf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE418C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770330833;
	bh=sjJSJ0nJ0+OJb9QKz16epCdb7lh23jY04XqQjoYaa8g=;
	h=To:Subject:From:Date:From;
	b=U6OO3FDfLpEPnOvuHEJceJrXvLIri8xBFXYXgVcsh/zE/J4bz2Cr+JOeC88WD4fdn
	 5Hf3C65udAUzs3c9YnGR0v0ULL226yXZz0m9FKuq8oXu0OmPxw01y49FZbM9x2yj5a
	 iG7BqeCmjeV9NAjR3OkM/OZqJlh+BgzZ3yvu5zr09kUXtg2hTE5nBIL0qf0nH91jzi
	 c/7UcPUOTtcKUeAHUmOlS4lapqwHsBE4l+ZB7qI0ZNoHuo4FC8hDQKj31ayQceZPfX
	 nIXvCTPzxn4MPy52SkfQTTciyxVNjbD5cBC/tRv7z4HhBWNoi+2x+TYO1VgK+Z39jp
	 XPm3/Uy+pKIyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9B1ECD9AA
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177033083362.5376.2703760554690323149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec9977a4aceaab248c398fb998b9e58b4eae57caf711646bb82ba0761934ac46
Date: Thu, 05 Feb 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770330833
