Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE9657C
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D6ECC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669951254;
	bh=mBUimrq642pXJW9+ByFhLHgkLpGeRgCnw9ncF+H3nOI=;
	h=To:Subject:From:Date:From;
	b=JnYLn9z26DUyf++RqW53TSVB1ai60E9nmbQkfoBys8SoTtr8hXAf2GkInD6JW/3zd
	 yWohvNK440f7LF6MQjzpHY+XBU4i8+g2RW42H/qe4n9JECIpaddl7reuBXzhBU6yw0
	 1GO0ZENz/+i+99VF4hHEj4+wKHd4qnmh5WWad4EssvE6wyRgHgXa9YAyANtfNFYaiJ
	 M4HtrRDJlxmHnMyHpZbBS/OujZAw1GzoAAUSW2NzZ32rumSwz6KhHTGKH21ZwbZmAr
	 ODXbXwuRpxc6J4HKHVO2v4/EzbFh6fCTx7u8lrT2CNe2coL6Low/Y0ZmXYPdYnhOGM
	 oDBXEuDBbkAiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55FF3C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166995125434.25345.9976651688712297883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d453e3f73ac028e1caadc0d6b50c294805ee67ce63e683593cda646bd030adb
Date: Fri, 02 Dec 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669951254
