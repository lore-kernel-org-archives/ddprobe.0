Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F215730D1C
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 16:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6ADCC433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 16:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695744908;
	bh=HK0Ap9UeM/dvopKskgjETr5JoYJkgtIwXQEVmVMK0wc=;
	h=To:Subject:From:Date:From;
	b=gpu/aFpqR+jpAnkS93veOgA5XFG8G2PYejwfF0k9CLwWjWDngj/jvfohNQ+/qScKz
	 /mz9SuHRmQYwT/MSRNTZZDXa33kC4mBqDbORa/klLO4oOhHJn+khIk1iyjZATGzKzE
	 ORAwp3MPAVYcBEu+SHCMAPo+HZoElpBGA78QDTzkC6yd0FhuuFez/4PtahWfw2UP8a
	 84Jgwex+IOmUt6LJHVj7iZokdEHU+O64BrM1y5R/ZNlkqel1Ps1F6QpgfLvCxRS+8L
	 if275ynYJ9qL1Mzc/d+nLGAMXboLOlGLObN1c758zXl3QIkl56HO28ybLs4MBhkqU9
	 9Fg9ChGiaWZ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7903E7E64C
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 16:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169574490867.28721.6958038506825379560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd4e2a9104c771e2043f451cb554a188af73e615af6f3e997008bc0503c15905
Date: Tue, 26 Sep 2023 16:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695744908
