Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0373B55784
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4OpyKjE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80DA2C433C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702568896;
	bh=+wWUzDeh47WNflRODsCvqEil+EzKowp2rXjWyoqT5LU=;
	h=To:Subject:From:Date:From;
	b=j4OpyKjEe1/Dlw+dD3KwzE53XYrWONPXzPtSAXUtauzlorrVIdwdDicW64yXBzX8e
	 RAIc8A1iLbjksQhvwsgruma5IU2rBAzvEuG+0KbkVc/MOIXbE3FOIxIVmBH3ZUxMJv
	 zyxTQAYMRs/hH1cmipqfjIIG6NXJA3UDm0xAVuJ4FGwU6sKqAT35AS48fhc0NoIc2X
	 lDJiHtRiH15SG47UNTv55bA7ZNsrPMvE1aEN5owgt4qQVyFPXuOVuW8Ss8eJzN9URf
	 FFYG7Khor3WuH9ZS5BR/uOr42AL9/G+1aLCciO1BPZFlsBOQWQpTc2M6N0jjF1fAMB
	 zWFsHjdUvMGDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62777C4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170256889639.7498.999507225181362134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 232e584207e942cc2e73a52efcc18aac6c077a57bde9a73def9f03713c42efdf
Date: Thu, 14 Dec 2023 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702568896
