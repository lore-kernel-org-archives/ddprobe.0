Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DAB882D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 23:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D981EC433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 23:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679355425;
	bh=AYA6XoFjlyVPdnUfO2kJOgE16X/Fm3+dFcHkWD4IO8Y=;
	h=To:Subject:From:Date:From;
	b=IRLgiHIy4oE3hjZFMaj/nwPrjSb23+43GbmpiWzrHgxX7IESLeYLGvnPi8UTJHhcc
	 IS/Au5OdqOZffsiKetCQwGePIH0cqJb+HNGCFRc8gGiiMumWIVOGx+OuXGJliGq9CP
	 GVbYJu4wfwYst+JdHIe6KbyMsZjoZbvS9IWzU5voaFfA8xLihTaJ9UIep8do5e1B9W
	 SblZoK7ubfniNfMjgewQHfo7bGYyAH4HDJ42ZkZ9LyPdLV362MPBwC/m01xXZky1xZ
	 01Pn2eMkFpj2JuglWdIQWGOGlsw2JSq5IgPeXPyOdyBNq4xh/M7uP+phJ8nMzLKcqx
	 6c1uVmq2usGEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEFE3C6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 23:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167935542577.28802.13443035029477610714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40b6de97b4048793511095586bc5de9c02ff2f13cb736e33d6e2b36701b92f75
Date: Mon, 20 Mar 2023 23:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679355425
