Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D11E125A0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764645174; cv=none; b=qWHYih1PgIYWvwWTf5wMhFjIGI+NyRJqC8/NXfwPLf4PhqyM9G8mUUhN4h75a8olypvb/CCt/2NEzYICPlMw1sfJNnL7SZmYjBR99vB4eJldfJ9dN/gA9Pxm0qbmTVm8vJaRxnXtBH1pQzc/c1+Ctt9NTtBj4/H5BFDD85KAWTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764645174; c=relaxed/simple;
	bh=JMwH7WtLFvXTHRvZtp6GObEjwY4jc6+U74B2JyG+UYo=;
	h=To:Subject:From:Message-Id:Date; b=Y+HR8ZlgJWgbNS7hjW+M2tyl9SgapjEHu/D2tKY59JKnef01VyGGBxV52qgJ8OyRmaWhVa7V04DqUn6zTzGH8Zp3n1fEk+DUngnhZ+wQuA3rE+i8xE/778ukOhDU063ixdG3d4GJJst/xfVCxIUN0WvJWuYUi3biXAv+1BuaD78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8s8ZG+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8s8ZG+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA34CC113D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764645173;
	bh=JMwH7WtLFvXTHRvZtp6GObEjwY4jc6+U74B2JyG+UYo=;
	h=To:Subject:From:Date:From;
	b=H8s8ZG+Y6k6DMsV81NQ6yYiGSzuz3H6JfqtmbwVcKuesJx7Kxvhd7j+GGeJsV6Gg9
	 5BIUWzSIH+dQeN1qVCK/5OeteoXjoX2qaSyR2nIyiVYTFA8Hjz3qozvoYcKu+35b3Q
	 /cRm3daKTl2PGY2KbANzcBK0SHhz1VaBGLbr1506OWU1c1p85/Y9JbBWLnoK06Aelt
	 I31f37iqYY48akEcozJGxw+rVpWvzaYK8a45cVXSatP3Cu93tYVOW1Kipa9SyKlI6x
	 OPgydyNohf1khbw3iwM3M4bgXljIMkVx4Lsk/0CHZb33K06pVfAA+u4bmrTYrq+7iU
	 jXQEYXMsBIsrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979D6D116F3
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176464517358.9302.10468558236675376149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca390f16eb1cfdbdb528b8b9e4c3d661742691029b6a590f25330363fe5af9c3
Date: Tue, 02 Dec 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764645173
