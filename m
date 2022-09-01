Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA83233D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B513C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662039653;
	bh=LG54z6xq90Htan7DYM1x1nwErZ4pEqikxDUeMbfSj40=;
	h=To:Subject:From:Date:From;
	b=W+oC0UnBxF17l5V1alXyQhcWdk9kMEmtbv55kexDw5X69wk7mc908icGlGvEbHE6F
	 msYR9DtIwckl9H+deSTL0eNs3hb06KSIIUT4sZDO6UX/ZHpb2aoNHEz6rQIEDVK2/e
	 QGO2tniVN0+8nU6i3WB+jSpVmld4fOMBVHs10GTOSR4/RG7WWR+APauJKuDa9LIF4z
	 vQZKm0oyd8AqUvHwP7it50fVt/PoWrkW8RM74L+pTuKwIL6ckcx+g9AmTbYX/vRuk/
	 TJBXYapexPn3nWTEG8+Nzg7sanqsxsLF51vlUaGtNPLY4fac+2OdTRTOHteliQF7tE
	 NmGjFqk0o1mtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5479FECAAD3
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166203965333.12755.4168942717270614920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb5350dc546a8a9d50d780ac49dc749a62d52e6715a761e8ca6bae49a8a5a944
Date: Thu, 01 Sep 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662039653
