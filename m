Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9B8AD42
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 22:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2189C4339B
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 22:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677192305;
	bh=9N9tK61ZVyolsK4zQ8QbfUN2fewZ5fbfijixQ181mUY=;
	h=To:Subject:From:Date:From;
	b=Fi2CD3wa+cSKoVfp5cr/r+G9k6ZskZhZJqN4toyAZtYS8x3Yf9qjblE9fmtdqe+EM
	 eFr2izT4B1YItu7hBxV7PHQ7hlxUfNXXLkOOIiyLdHOBEAts8HZEBW6c4CQWix+rlY
	 EXu8d/w0LIbTaVe3ftcsxkcRzhjhAki4vJICpP/ZXRCH8FJZ/IEbH89byrf+XEB7Cy
	 b/g3p7jxCEpb8y/94YoTLsztdDFksB9jy/23laVeqeiR68MY0WC4F+vPsex/6bEQ4U
	 cvvm5D+Bj9uNNSV01my8ooUcKMOXoNG2+ghqtqD0XvOgARz/SseyGoWm4rPvtg/3SU
	 dBiMGY7SoHB1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB5FC61DA4
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 22:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167719230575.9138.12321780924525362888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56439e5fab963f34616a6dcacd6a7a568a54a318a9bc216e96f2ee29d8b76958
Date: Thu, 23 Feb 2023 22:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677192305
