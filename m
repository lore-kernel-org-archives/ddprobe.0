Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0A4748C
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYFkN9dd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 830CCC433C8
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698150496;
	bh=1WmAYwTH0s5knNJttIZxNsxHKZDbhTt6IxXtVZ/sIrM=;
	h=To:Subject:From:Date:From;
	b=cYFkN9ddLbBy+KKBcpzklbY30TalYA6vUX98QrI3V40Jnn7GJkAzLxUfUM1RswR2n
	 DYyxhZqRRFuwqKsN5PXamrI2e23Ux4sxEsob7tz/BWpTAJzzZky9OxAoq9W4LKf8iP
	 ZHl7SYILFkpZrFlXIDX4EFTEwitJvPqpdPcF0C8999dM+ItRoRq8SA+2JmG9Q/AQYi
	 ob1kbHLGBk/G4dSWroR3MPSxv4BbY/MhFSvuLa+a8o26W7YVMJj9DYho2d0w6manYD
	 WaZZ5dJmSNbOzAmVQVYJnSzRgT0sYoiQP4ZV15lVH5zsJAwUEtRsiufiExD8MGpEIj
	 HzKUtnnauEJJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6817FC00A8F
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169815049641.4747.10911525980170625971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eb55077627d523d7b0dee7b4708b9725a6607c26e64fe3fa7a773d5e7806fe6
Date: Tue, 24 Oct 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698150496
