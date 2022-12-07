Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE338F51
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 745E6C4347C
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670455254;
	bh=4RiwkSoCZaIT2kcmAQgq6hIqhVMiHjsrbYfPo/9zWNs=;
	h=To:Subject:From:Date:From;
	b=XrnNQtqlzmoDnTZQLx8Lhtbq1ZD3tlZ63judmycz+oVo9XZRcep6k/Yd0nSrlfZ6h
	 U8ZZ/AMsE4ICI5jjaeaGXOoNyLZLcUX9OsSimD+/Af3Hab7MXpWraxEVynI9P7qLIA
	 Czs2ROfRSNmW2nQD9K0covferQUEmKFiMTmShOr8DSOYNGRuIFtKFKVJ5WgE20OSAQ
	 WTz8dHH+aSCiBZlXy9rS6G9g/+w+SJHURmfKG+DLIA52EFC0GihZWiIlGaFCSKsBks
	 Y8JQMSN1beJ3Y7hlxfH0PZFvYFc8k8GWbK4aEPIFWswN4+RqrfVieISUEr2Z5aGcnR
	 2+gDHGIMhs6kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5894FC63705
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167045525435.13415.11429614335877768320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3652deeb63e51ae87e0a1c585565ce79eb1826fafb6e3aecab31a558875112d
Date: Wed, 07 Dec 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670455254
