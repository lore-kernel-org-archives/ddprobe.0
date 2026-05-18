Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0229E2F1FFE
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 15:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779118834; cv=none; b=ScAONWcO7sVYE1PkfCThGU6aFLBHHOZ0q6b3CmLWApOA2QloRkFhopDxwFKeMqDdR87Us4roDO362/493EyUR6YRgE59X90xkV41AGB9HZFihg46wa71Z+oPcwSdrkUKc8h3wxYdwsHQmFk6yCp1uQlb6ZlfAG++7zSTtPClPYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779118834; c=relaxed/simple;
	bh=WZZKbXGcfdnkHqrPU0UZcR6BSLc/MIwrOCHP9Z17qXE=;
	h=To:Subject:From:Message-Id:Date; b=gU2QYpFu/aGkbo/PVzI85uHU5gNiXmydWE/uKG7LCACHrs5zNiXs6sWIURIF2y/f4z9VLdxmta7xp71R+ZQGWu0eSfa6RSH6hLdx2oXeKSTi5WhJ+crz6D6kmSSXKhEHBgt8ChBfMjRCAAu5iNaOSbyGREBwz6hWm+QQFvVu+YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgD1m9QY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgD1m9QY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9B0C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779118833;
	bh=WZZKbXGcfdnkHqrPU0UZcR6BSLc/MIwrOCHP9Z17qXE=;
	h=To:Subject:From:Date:From;
	b=fgD1m9QY61ag8RJ7Yhev33frJuGkDRKsALZo4yVPEL23vnEcApplncbGRHzIWb6A2
	 JhEEUfyahm4SZCd01SHUZ+Uanp+vVc13TjsMIRaEbq3w9NaNEIW4dJm36xkzOWjUFe
	 DDGG1GB5HOQVke6YkXg5hI+2r2zQRvULq7u8bZRxd2q/0dxeXau1CFrZtHFG7oT38u
	 /BNBfY4jWFqSZ3fwWoKIoVuUrh/yRww8i9aaG/HiwnxKcOtKsWGpbkquiOrBss5+ME
	 hxtBTfNrN1kUBo0PwJkE1x+gFQimE2oiFMz8m2GWZYzV5Flor0YCGx6mA4aHoQAeYR
	 it5BNHqpuwuxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAB2CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177911883369.12779.3177825479537918418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 617e954979973cb7eb34a399d38b1506441419be92eacaf7037a88cd3e908e06
Date: Mon, 18 May 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779118833
