Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2CDE8836
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EA97C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671203487;
	bh=HITDNSu5QGBmClwj1Cn/HM8uk9q5UBRjnKrhU/GV2zU=;
	h=To:Subject:From:Date:From;
	b=CHVD7+yJtMOl8aOOLCEMwleRYVpB966wobg5vysYaVqAVRJU6UIU+D9kpY2ZwBMEh
	 5wQRPDqn+lkWWsbV1OyNj8hKtuOa5NBsIITX+/de/OWLL/Mq643wOOmxmCv0O9qLeI
	 n2gM6+zV9YCTtrobvom6oSyZ4b2azxgmqMKUkwxjkhu55/gn2SgcMe2d79BPy4ykpj
	 kc6F2juzlauqQj6h9UWQhXaIKrMTbamQYmk3cUOCvRQLWPhVu0JeZ+hkdDtven5Cru
	 hXjaNZpigNK+7/D2ectE0XbkWqiDgItjds1QBYJKUCLNuhMyyDGGVb4ODkUfR/MzqK
	 Y+QHl1jgBBhUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 667CEC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167120348741.21584.17961397586677524026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf7da8cf8d842d1124c6c542303198668982794278de213bbdcd33bdf79db76b
Date: Fri, 16 Dec 2022 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671203487
