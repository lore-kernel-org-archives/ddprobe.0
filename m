Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DBC6107
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oae118sT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85767C433C7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704121096;
	bh=KDDnGxsARe0HPlxgKC6ErEQ2sZ4MGICgVs3xofZFA9k=;
	h=To:Subject:From:Date:From;
	b=oae118sTqmtFcRbFOgP2oXk98gldToauad7yeuuvhNJD+PA/XKCFJ5yiR+WZrp8v3
	 ESqsugEKTGiI2vAKPaWsylSKoOviVyYMSKLX+2oIVs9DmCInIlmo6shIOokbD4PLPf
	 wxvqCOoqq62aBBOOgogyMqMWhb7p7a1USyBfspPIxL0vtsJOBwniFIrn2fQuGZ0jAE
	 MDbvVkph1eJKd3jcg46KfYOxn7zFijgzO6KNdfPQIqgMf9u/BgTmHaa+BOQQ5WogB2
	 j6m4KBLis1HKVBPOCKhklZt7/ZT6rSnKCsG+pbJsJgNmUtKjdoNk2UuIOnYyramH9u
	 iEYW8XNH1a7pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66177C4706F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170412109639.10860.6232138180835619720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0102ff1390eba3e5f112921b49352ecf09741e70ea662d7eba48554f733d0029
Date: Mon, 01 Jan 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704121096
