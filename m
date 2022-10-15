Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D420C620
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 751E9C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665797453;
	bh=neeZSRVYq+OdpodbAPPIkkLCHRpxR8klDEXVb/pSBss=;
	h=To:Subject:From:Date:From;
	b=Im8f8a2w5uJ71CO4TJtOEwmDFoTkhIdEz0aj04/i2TVlgob65rIxDrychk/aN6huu
	 66SnqSNMtFi4hRYNx0w9JVARb0oAF4dremhJySVrbZ9/DH5TtrZh9Aj/VQMST7ab1Q
	 zYAF/EheIVAyVqjQVgaOEQpArwFkauKrlpgxRFH21jgj79F7+pxWk/ctt4NGtC6Dp4
	 fQTOCFAgwfEvIunFEO13Zi3+BIDrKiQGCBeBG/5jCqAfDNrdKxE+a23veppaBPb7wE
	 nJbQYQVYvPNmSoghv+rpEUpz4A24rVgsCRQR8WbdsH2D0PqsKB4X85SP8rYtUumnbU
	 ivMSbSI7LvyFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 592CDC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166579745334.14536.8537314030539036297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2dd527912b89873a111de7129fcfcaeddea63b877852c805fbf751a57335ce5
Date: Sat, 15 Oct 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665797453
