Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB0771365
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DBCFC433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663722053;
	bh=FwA/6kT+TYFFRL79cQr5h801ai1w0KM4wDZIUlBl6y8=;
	h=To:Subject:From:Date:From;
	b=IxbBv+wWgLldqoty9GL11DyAWR6UsfcOArDlU1Ju7GuZ8fDzlHRFTkz/JW+xQwrtG
	 2vNNdac2tCfB0yXCKkYrh4WQw6Y5rBlR0+ld5dmDn0S4sj6H02A1l0we07UYAcwHzl
	 NvLpG0xIeE5BvYAfyXySyUP0qy/z67p0wGsHqZTUH5VfYXn742XexsENeeLgzr9AsS
	 Iy1TNJNa5l2j1lxKntF3V1C+5IjIIqVyVwiN3YIR8RaChhpXmtc+lbn7K6CF92f8id
	 KnVHnvIEBuNLD4u7i3ZgO44mOlmXbsihQVCZhx5rPzrm/LfFelM8fBcSuCV4CcvLOL
	 6zFMQPx85dKsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 514F0C54EE9
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166372205332.20840.1238131349099056453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a931fd1454bd42410aa641cca549b68ab849617a2db1466f593482c619ac79f6
Date: Wed, 21 Sep 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663722053
