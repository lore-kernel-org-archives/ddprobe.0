Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4B518A95E
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734908754; cv=none; b=jNCuVXQAyivF485l/QeulLP9T9RfwBElD24QwJpWo/sRS5M+IJSDHW95XID/rwA/4PbeH/VNag0/TMkjly2X/ASSfEPuefYLx/76yzsFpMbjbJUEqhu2ZdLQxNyc4DGhdiElyK/9CRWtvyhtRF/xJVlzKUBhwydNBH6YL4wf5KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734908754; c=relaxed/simple;
	bh=IcosCHEUAk87WdcWAUEgj1294Eq1CM/2YWxuJsgWQFY=;
	h=To:Subject:From:Message-Id:Date; b=g/4+VqKD3Es+dg5KAeg3LQ5qWSmyaA7jnP+PJiG9wpYZ5Z+Zq0t2ChE04T1wdpOEF+MbaeUiuPMNBE11dg39yZUDu+CSBtGEHJ5dF6EgzjWI9aaEaT8/x1vjaVoZHHB4zRVLeXQ5QCyyl5jb7f5l9r0/XdOyTI0sZ0S9Wm1kuXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAKbzRWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAKbzRWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B68B0C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734908753;
	bh=IcosCHEUAk87WdcWAUEgj1294Eq1CM/2YWxuJsgWQFY=;
	h=To:Subject:From:Date:From;
	b=NAKbzRWUlBaMs3JW8tT//8xCu+MJpTrRkIJd71qYJ87LysvLGY9hvGJxdIBdxO8Dt
	 Sxn80Ub/2bSTS/RAzL6uQvAaZ9WQZYxDYc1EGA9DNJBxvSAMXNPmUZRzLa1ec3O7Uv
	 /YScUjCSS+Kct3jkgzOqbWPylWMiq6Lg3r8D5gCaOqJVdADCdQXv1yOtD5wuF6cBMM
	 rGyx9MgwIkcIcU756kKnFGTrQaV6ulCSKWm6CmWWE+kujb2ZvfKxBsk/cdFozHQwLq
	 Mhqh4GJKmZD1VUkEh0PZNVYPaj/upGaXUuWVNiP1KPfbhphK283KzbXn+37u4s/CAV
	 dM7TxfkTAmlmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16BBE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173490875363.9143.1491938896196970373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d2b7a375c81526161d77dfe82a133269a104120ad5630b14e827135c469c030
Date: Sun, 22 Dec 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734908753
