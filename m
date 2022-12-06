Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD1E27713
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B73C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670345454;
	bh=N6KeNdPcpIaXBGVCvx9w/Td14HRtNWlM/aWhTSalYP0=;
	h=To:Subject:From:Date:From;
	b=r46KsRmNNfQKZ077VBi31Y11BF8r3zygcFgvfmnmjSVBmma8i9w2Ul1DQBwMKNn+i
	 4YsNCdgF+mMn6XiBDVi0c37Ccjqb3X4Tdw4FEJorMN0KSV6dwW9FK0nkuhUP5tETUz
	 6mfuW+LWrlRWhmBKA0nHvNEP4iuGns770YnmUjt5BAi0BWBGN1Jk6eojfZT8+LQz0w
	 8Tk5BeL/wleoL9rEPDtaQM7MKP54vsCZxfiMJxBteNF0kyPYkxjiQVAA+Fm84xAGVi
	 FuyfJNdABzkp06PUI+X3I0Gpv1ig9ELl/ojmyk0CmF6x5AwdIEPisM770vcuxP3nIX
	 ZTWMLwPk10Qvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56DE3C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167034545434.7696.18368941369367640100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d393d2c1ad75c0a9d764f2f4a44f8f11cdbd7236363adbe8aa3f2a011bf524a2
Date: Tue, 06 Dec 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670345454
