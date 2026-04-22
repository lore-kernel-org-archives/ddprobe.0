Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278CE35972
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776844654; cv=none; b=UhH+JFul5qTiGJgu5/8IM4DLtJPMV4Rw9aX20uKg9Iwe6dF6Fz/GdZKGQA+SCOo6//mffNhf+P+nr2Q9aXma6HVn0Lt7FcQ+Mw1XoYL/QqL7kL2beFSuJI1TCgmnJogmH139GziNFsRt3/QkxwHc0Ff/lf709XZgP/nViTSg+fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776844654; c=relaxed/simple;
	bh=piTFtgDEbsUo+NQkeRw2mo5rYwhOYHlUF7OhH3AE6ls=;
	h=To:Subject:From:Message-Id:Date; b=hmYza94cc/+P/aLM+nFoCxTd76GBS4wvuXJQatSUUmSHVNPG979ZrzR8r2wxO245PMkbW0yYXgoos5b2nQA1r19Cwrvl0j4/yYEhXyKJhSV/3PAe26p00VEC9QwM+VkjhGHhASWcVr0TCKX0hrBSCm4PqY/qUMhCksFyM3UXEVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCc0F/5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCc0F/5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA429C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776844653;
	bh=piTFtgDEbsUo+NQkeRw2mo5rYwhOYHlUF7OhH3AE6ls=;
	h=To:Subject:From:Date:From;
	b=lCc0F/5iptk2eqXXj8x0182jEtjIPDbZ00YShogoCNRUHYnJFi1tIU5K3gF+cLYlP
	 BCT35ndUyL1qUYg5qI87OEqQFAk4qf6HHkUjFwUMDKTCWNDoOL2HsoryUf2IAM4Lx0
	 yszUXse+4FzIIJHE3n4vFZWAzTwr5Sl3vOZ/pQrPNrJGoCbK5Yi6d+dE2MDKrSaCcL
	 2zM5LvM+hLJblj+VFbA7rEaAu3KxX/KqvhGA04Fk2BbhEQl8qSpLEIAcCN89VRBrun
	 tNxgftdjYqEZXFwiBU7uSNPVT1BP2PN0aeBVSozt/i2ZcbeeA/+9sOEBEY+BQ/Po99
	 al0lQFi04h3RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB945F94CDF
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177684465369.28206.15815669557774249651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9cf82146ff4455f6c34913995e6d3908810c9e70f9d17164437870be30ce6cf
Date: Wed, 22 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776844653
