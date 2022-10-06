Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56342C9D
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70211C4314C
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665070853;
	bh=jayvdmCnDQ6y6BgvXlblRtzDqlVPIaNmivXlnx05n5U=;
	h=To:Subject:From:Date:From;
	b=hDdRI6bAfMW0wRtOk+X0azcx055pjV/FFjgiicDn5m6YARcpHgoRDT3w/LbEQHZEp
	 qozoEgKhYbEjBJsgp75Za9stm+IyYKjskNJ1I2AJudLViEaknfoTQXP5ERHbtehohw
	 oYzKhzrkYCfxwpzx3vwPlGR8axaDoQIf1gYc3pYjvBXIHNU+0bNpZEPMS9dt0GKYix
	 HDyZOrPK++oYcx7Cu94VmI8pwSBPbrWYbJ0ZdQdsiLS6SXRXVTDYOpYhzBDVg0UJRS
	 /y6zmj8gABT4q/gLX6YqlXgA0HRYCDg0n1plmSwVAuUm+C6PIPXvJgieq/cnE8euGY
	 eub65C9zETl9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5965AC433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166507085336.13628.6374814495630948268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae2bcf1e10a644c0bd1bd5f0d33f5dcc4b6163e78dd8c4b0b58b1bf6600d3ec
Date: Thu, 06 Oct 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665070853
