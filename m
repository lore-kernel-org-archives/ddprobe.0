Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7EFC1365
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8168FC433F0
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671582687;
	bh=fuDD0rnHlWAK1h4KwH8/l1svm4BZ+eVypJrTdFg+A1s=;
	h=To:Subject:From:Date:From;
	b=q+iZ4vLjy56aHxrpGWRiImD8gITdW+/iOLAo/3V4hAtnh+Q4hDWm1sOEGUhosO7tM
	 oXSQ94EQ/L+Msw6KcZ+43A6GwdA6vTt91edYdMa32mAmR6pFouRFZ55QfJRY4NNi2q
	 FkO3XdZGOXyVanGIWSyaGnF45RjWeRQ9dIGmosVwMtGgcYxL9kfRzYHMw+mcE5HX9j
	 G9200CXSFd+c3x2dZvZdRNaJyU/EPwbJVrWajEoLEhuTGmuxDCvgQ6YyYWPFkgu0Z2
	 1z0tEW5fghBFykXZ+F3K4zh96IDxEWKpNR1NS2FIuKSsynOTnndsL/ca1VhdYIHMFC
	 zZ3qmfIT7akyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D80C4167B
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167158268740.27365.10304719541221846264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8dffd5a6644d3a674fda2892499bd07602f6ecac4a9b1b94e173ab610e6214f
Date: Wed, 21 Dec 2022 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671582687
