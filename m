Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3AC52DC77E
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766925834; cv=none; b=bUNmNq+4Jc7lVFWYKWoVwIK3LJGcRblObzGtE0H5uVnqC0DVnN4d/22eA3ojcTxuu2qhmmYxBYLpuT3ThfIr4L4OX980tSa/t4El40LZVT5jKvSJ3HhE5/uYsQehrZ1XwSWuzUCSyXr9bl4IAz6QpYcfGtjJP8bQ3+pGq6GJE8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766925834; c=relaxed/simple;
	bh=sOLLMNBByN5cbOExFb45moPyrG6AjitluzzCLgLwAWI=;
	h=To:Subject:From:Message-Id:Date; b=hLGMiGkp44sgJplOee7KOq3px993W7o8T+jHWRbYwNb3gYPgU/wJnDG4+9FhZEsOkwum8PABBlni+97U64RtHnuZxrZncoFQgz2e2zRuw5t7ORsWBb5yWBfhbwEGt1ypwfL8X7ai7aydCHvLXF3ZNV6k8YRUIvleemhWFkMxUl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZcrYRWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZcrYRWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DD9C113D0
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766925833;
	bh=sOLLMNBByN5cbOExFb45moPyrG6AjitluzzCLgLwAWI=;
	h=To:Subject:From:Date:From;
	b=CZcrYRWhk+1WEI88OGG5PWZ2te41yJvpRYzO76GDDhxTjFKEEdFIgjUuMtYrtwhAv
	 HDoIo4Hl8EIpiDeLPEA6lMGDRsQZ/XnQTsYm0KmIWuC1hl6ryPMx0E01Ern4QoOxqC
	 LAb346wH1eKSd4RY8IIZ3M0rKciL8L5wcwzJR7uzzCmqbmKJfAddC6/ylRYb8SG28e
	 tyaJeNlVuRmjTBKen1DVPc1z2UR5nY2RCqzBsYE5G75Q2yl+yE7ZtH28/DC2YL4Qga
	 7vdpFCxWFICGY6XzhV5Wj4UGHurCjnf+aHHgxk+czV0k4Ud7NwLA6WdGNVPQPFhqxc
	 V2uwL5P9Ab2dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D51ED3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176692583362.16169.5903961495791965739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23fe16df7c45887c8893a5b78ab3def9c4be90a1702752479053917a6b3627cd
Date: Sun, 28 Dec 2025 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766925833
