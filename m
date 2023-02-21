Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372101381
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 08:09:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD869C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 08:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676966946;
	bh=fm/m0gvZvA/J7wmc8EF6C0jDhQ9h8ypLFct1p8BW0Wg=;
	h=To:Subject:From:Date:From;
	b=PaaRH079J4Ebvr3JLnB5I/pB/o+Mu14Rs9bGFbl7b1wD+ADX9RubYFCqZnGy6vMGc
	 fsY/a/nIDpUzhAIDZ5tmowe2Rn2v2Y+OSWI3LyQwyWYTM0iBV4jb9St7zUpUiXMHy6
	 OhTIicOJNehAcd2hOcCxZX6pgW50r+WKiYHH2Is9k2K5l5rTo/y2KjU+Fo7v0GDAC2
	 5oOkc6+WWewTEAMVhPnpPCjhYH/h5RdeWuG/0NlSQ7cn60czfS00kZNiPKV+t2kqE1
	 xMqoMH+4LY8C3ULiHA+lAqZvgH4URhd4YWRMTjMkEvqLG9YFMXLfLG/NUfjEZuz30+
	 4Pr0GN9drHAkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB58BC61DA3
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 08:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167696694575.18607.10307916201507727688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7988dbd5b5eb93ef5ef69e8e452a5d7674590e93cc5b1f8b1ffc6c94354b036f
Date: Tue, 21 Feb 2023 08:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676966945
