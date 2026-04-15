Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5A224CEEA
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776252454; cv=none; b=t33eaTzw9IQKGUm0LW/8fTdyQ1kg7cMfxoBIYzKsXfmo55GioP0J86GfsE7BIvG/EtJWRgGSCc1X5QlQDv5Vc56SK+dBtgfa8ucncCg0ef6KMSByXDeVR4yeaJmytu8r0JOA6G69A4T4tCmxtRlJijdN5Aq1O0+JE/YT0RX1hPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776252454; c=relaxed/simple;
	bh=o1qZ2SnVYl6oPsFfgMPwl0JPTDdqbja1aYTZLetuSh0=;
	h=To:Subject:From:Message-Id:Date; b=NnNQN9swWG40u//+pVyECu0wRL8Szan4jx418+UAUL3oGgWR4suMiHx9E4Ll3u/9l6cG/9nk1cyi05lyif4iB0nbvPMG9/IHEJYlvcVzBdlUa9KIVpw+9xtLWIuDv/fBOyy7/XOyaJqdN3mHyYtgiSr69BjYpHMpwTXy3DT2ffU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1k9KA7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1k9KA7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A8BC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776252453;
	bh=o1qZ2SnVYl6oPsFfgMPwl0JPTDdqbja1aYTZLetuSh0=;
	h=To:Subject:From:Date:From;
	b=Q1k9KA7eHwcu8mzj6miPcleNYo+H7uKoScQFoAEsLgEoTTxQ1VVMo/iH1H4ZTO5eh
	 ugU/KOYpDaTDz6Ax2HbQCFfzhUfawhpf+ZvQ9W2gorXDWnpbI+ia1vsCrNMqqh9oN6
	 dMdvlvDh2NhRUGNQ2qlx6AvSUUv6snxJ71zntHIa8z1At9M9jiiYcyXRQt1QDDb9BU
	 3RzVWjhxKN7kPFid69tagd108AygUsjwu6ln/dE6pKSDuQCR6niqvagVZtGZh6fgYg
	 PUTNEnVqzyiIBGdMBij+pUYvEzSuLmz8bjoUOdKQQgkIh6FDQG/YUlHN45Wd+NwxLU
	 SEp2Y8InXgRiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95BFF4198B
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177625245368.14890.16766706818990994809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d67641e22839e4e0c59b163a84b9ac1d35aad272e11ce071885769190f7f974
Date: Wed, 15 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776252453
