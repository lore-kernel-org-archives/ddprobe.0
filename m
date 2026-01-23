Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329192D46A1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769196834; cv=none; b=coQm7V1m64jWqHp9QuTchhtKkkNIZQ9Cwz7ANJDfUXBkNrRsheUu6mHxcrN0z8QZzUXMDPZCanX1ClQqEIcFTpDEFpC1n13RbZAQIO2ReCiKAiS51BwbDjaQqif3IFqNR/+4UHWR+f7ssQ/PmO3C/UtpHw69zOrYGiOHSh9V7w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769196834; c=relaxed/simple;
	bh=QirOfzD6yLUGW9TkfR2iwi3Ue1jGvMkPNlf0PG5otto=;
	h=To:Subject:From:Message-Id:Date; b=mJ6lUOSWSFvUs22UmhEkYaNJ0OBQSlW+z8UzxHS8ebbHQYQmiFCz7cFEAAzvzgvVMN/RTkROGTnu9NIKmGZ61ylsz/zK7VCEC5V45vKoKDayQk871UFJrjWsmXZCww6yuSkVGfgRG73fsvsaJIJnrQ/CoQvGJqznKzwFB6ZIvJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxdRntG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxdRntG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CFAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769196833;
	bh=QirOfzD6yLUGW9TkfR2iwi3Ue1jGvMkPNlf0PG5otto=;
	h=To:Subject:From:Date:From;
	b=jxdRntG98awtNF8PJFm1PvpUmUaZCvrONGHMFHWmnXBkMcOuqml/ZLth1IZESwcUL
	 4morI+ogMGMa7dVGH3alu4V9LhLLvWvw5BzIjfUq3+fLnrg5AuVc7clmkD5xunsdfh
	 C+3ohUCQ29Ef9DumxEv9SsUU1eb/xW//lL67/d604LxzA+9SE/7HSyKC1ScmXHdF+f
	 Kq09AQf7m5Kg9Aqlg62YQteptSmDJ+e1UrRHLEz0gcQu9jNr/qEX5hRaDS/e7OQ3cT
	 QOkF8rLtKl9Cunv+Qi4hCIa7KQw84JUUVMbSBqQ9mQHQ8ohLWcLes4AJnpQciS6yLQ
	 xW0uAF6VpKuXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EC2D778B0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176919683358.1982.7243770122848043271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc56086d9aa7836dcaeee4833de5778aa023c0ef3d959c68e76306fd22412dbe
Date: Fri, 23 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769196833
