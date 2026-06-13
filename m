Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF0E3A8745
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 23:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781394394; cv=none; b=Z7to6NUHSwT4R9Xg29IwVYVh8PkkQ1+kuXDlHqW3i/UDMnQadSXidoCbrmtZYHTUEiPwgDK2dsfrPWiERcZGaMdW63nMzOSa5s9BETqlv+T5wIDT+nXa4BXRBsLivMYB6ToXSa7/p5LXh9nrXUKtZlaoSA8blFrJPUU73RVUv4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781394394; c=relaxed/simple;
	bh=S2lAoXmQG35tUxNPWfhQQ3Skbx+7aKecq/Yn5hHnrB0=;
	h=To:Subject:From:Message-Id:Date; b=iKinJmQYErIpfed9hb2RSuTH/73Dhpeya3tfostjgT+TTY4mNYMx/JOZAhaY/hHhOkbhM4xTBRQrT4L75y4wJSfzJHg+ESP+sHYb7GjvTgxkQjW1v3LOVCJ9vPRhfNcA95kZHFoV65fbviTlAO7iYJEIOMqBD2UbUkTVQTxwRdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2II/J7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2II/J7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB92CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 23:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781394393;
	bh=S2lAoXmQG35tUxNPWfhQQ3Skbx+7aKecq/Yn5hHnrB0=;
	h=To:Subject:From:Date:From;
	b=f2II/J7kXYxpj9UBPs7zLVX8SZOyNs/j5NEQw1sRQ1VKT+dhr/6WlVe46dskUwKdJ
	 lAXPvZKS5mg+2FgfQ540VxnkGvdQeQLDtejtYIWgP8zMbbJ3Hg3acd7+K/mIAhs0We
	 sAj6iCDwj+fT57fpFWpjGW2PErlBhW4TqbcDy5p/hFIBOuavvTlQkBnaGcBSptL9qS
	 PzZL+K/xjT6dGQkTzXTVzydiQ4d2GDlJtaN65Q5BLkXWw6mgPmxHbbENEXaw+Udjzt
	 9u8IPTANVjVtrAz60qcsB4iaRuk4FEK00F2XaG8cAr6SIWlxdWy4uhjx3XVw5sG5FY
	 WxJm5ZzmpqKgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B285DCD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 23:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178139439372.18156.2798026744527100247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f846ee400f4e3529ff58681171ccebb1e29849a523f00ce4803357e34cea7aee
Date: Sat, 13 Jun 2026 23:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781394393
