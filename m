Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C0810780
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 21:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C8FC4339E
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 21:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679434085;
	bh=uT4y2sAiEnEht8tPc172GRCMEbFaFcrgtb9RtC4Vqzk=;
	h=To:Subject:From:Date:From;
	b=hbpu55/uldCJXyY2Yfa6s0JgoU1KxAjWFdtGjkFn59GBsnnqyOFm2JZukrql7sG5i
	 VHqxmhaxJnke32Py1nzYUCkTCAVEOYwDe+Ol+8rQfl6avVC9WEAhhVtKC4NUxoNDCC
	 4KLC3DKdVWHggT0cIucPpB8oZrVRLSjpMQ5OpIHraZsUmJWhn2ry7m5GnudDIjdGZa
	 WYbsRNmewLPwym39VQy00U1QCn2VCG1LoYQpls0HkJ8BQ5DAn0MKSEPtWWQnr2yFWf
	 KSXo2TJ1RzjHN4dAF9CoHR1CY28RegDNcHm+tXTrtS5LoAUkWADn9FOhGZG2fn+wuG
	 BTjO62CvIa5jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B93E8C761A6
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 21:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167943408575.3973.7827033637499817248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 978934f27c7555f4a6fc8ef1a164797bb02d72023194cd291a3f1ba00ee9dabe
Date: Tue, 21 Mar 2023 21:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679434085
