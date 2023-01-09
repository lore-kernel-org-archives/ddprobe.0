Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEAB3523F
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84F02C433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673303487;
	bh=YL0X1CvTmYDnb88zWk46JskXFJJl2/sXymESmPUc/+w=;
	h=To:Subject:From:Date:From;
	b=K0K8/UowMvPBTotfJHSwpQJDXPTs+AVLzOMO1IcOYLN/JbnItvpVl+T3XndY4aw60
	 pQJBUC86JmNwi7wVoQG2C8apdeRmMArIISl3/1HDeJPOgq7MKvePZLFRU1te2ZrqxL
	 Hb4QB9dwcqbnUs4aoLuYYQ1IuNMvmSCWxFC3Dy8hvyulRDGgHTxk/Bo8P2jIln3oq8
	 H8au2CWmudMZcPf3F24vHMkn4GpkwiA9A58RyQOgpkPE/XJsOD+GF3bDvGBzoCEZEn
	 swKOfLOqRfKpRrzJNjZfKi6D3Ev0pjpH+f6GHIRs0l0A7MKnaa4v9LLYv4kxsM9oES
	 7FheRtvCrCSXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 679AAC54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167330348741.32642.9756265809763153339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 309140ef47dc48c285d38e7dc8f36489057d7b95793468e877a000734fe1c43a
Date: Mon, 09 Jan 2023 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673303487
