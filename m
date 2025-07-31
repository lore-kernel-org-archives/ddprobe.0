Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5CD1E7C19
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753951793; cv=none; b=NGhCE7+Ho6wHWvjFIRa0vVLvd8gGJJiIe5V8mlYVTg/md/4WSN+O72MlOd0CCUP2rwW2x+48Upl/Hb6Nx+M1ZhQaE3SbHrVO+IAP3gEWEBVXqIULb40xQRL53riLX2dXqT+RtaoYBzccptgErL4cP4uTZqYvoJGoMhqNy5N5oQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753951793; c=relaxed/simple;
	bh=nzYlN9Ov5WNQrlk+5xGOPTYX9cCmlFiU7wYV3QBhTCY=;
	h=To:Subject:From:Message-Id:Date; b=kSSkRdhohw+TEcgVyhSwJ6ZsxXKRtH6wFW6kT9p0SU6FI9sBZ/Y7FF5HholHi8tdKQEu+zTaGNfHvC8nwJRUZKFwghFt/99GUI/knAaDK/hdFvoNgWEv7xGWvICQhbzj+6NdWlUHsql+HD04Q9narzVNgu3Ot3si4MGvDb1hKbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2vLuNO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2vLuNO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F607C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753951793;
	bh=nzYlN9Ov5WNQrlk+5xGOPTYX9cCmlFiU7wYV3QBhTCY=;
	h=To:Subject:From:Date:From;
	b=u2vLuNO8BFbK89Ws1HLNA1mR/a37sptnChAap58f/IrqpqUzJYQxidhURqz1M01BB
	 rCyajDBVFozSV6ysb/zOr+sasm+QWhaFay6W221LjufjgxIeo0ItvHU5TERVEkrPvt
	 IuXYzjg9MS8LOta2bzNU8JwKvJcPSyW6FwSR5ifGl/gxZvjFEv8fhpK0Ifmr+eRvU6
	 7z/vkt0PBVhf4+58hpk3n3lGpTw82Y0l+pETDZ/Ebz8LjZ6P+6AX82fBjK9QSRu8pP
	 6eXqolLZ+Irqzp1VNLP74rOu3uVqWGgeYI+qXPICAGsW3ng9RqoQGC+xPuCYBU6tpi
	 8D3DzkCNnbLvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DB3FC87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175395179357.32067.13777193716015317567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e5ce8db5061fb5eb00a8138cbee04c0de8f43c29ec108aee697592334eb874
Date: Thu, 31 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753951793
