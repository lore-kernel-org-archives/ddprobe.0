Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD997C
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 05:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE279C433EF
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 05:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682315525;
	bh=ZKEM/5X29aEvbMzByB2AnmZ8NbXi9lx6fq5NzS/0qqw=;
	h=To:Subject:From:Date:From;
	b=Evgq4l8C8LgLEzKk0K7uGe7xMKUNNQZhJU+lfmlmAc6qajH8w+Nm0AMhePhq+8Yur
	 jINUexj+NnhmNlZb0bzVrolBYipD3DMyUo6F32imwkhkU9VNepuGB9iUYpezQhZezA
	 aR3GWxhg1LdMI5m6SOHIxunueWZEmsws1ersqQS4DxM4n3xQRGiRdcI5h8bTEgteDp
	 6P+NbrGQdZyOOgsuPnHIRv/x5qccvKdKrGPJhFN3kmYKFenDsddd5FQCD5Sxy6YZkb
	 Y72Y+xvKElekQLSJABzw3DfJXlfE6yB4EUFS+h1w1UqAwUuQLMd9IZFk25Krc12sfr
	 TEH3voJKNjUsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34F3C77B61
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 05:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168231552579.21547.3250229702170474044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfe7fd1194a5bcf3c738b5468fd5651c7be4263b1547b0b9623a554d474d987f
Date: Mon, 24 Apr 2023 05:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682315525
