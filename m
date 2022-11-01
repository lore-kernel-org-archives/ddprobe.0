Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D7B1E9F9
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 23:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69A3DC433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 23:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667344254;
	bh=SUqAPUDc3n1xWXzW8NjgJqN+/NdrVIZTlGEbMfNXWyc=;
	h=To:Subject:From:Date:From;
	b=eBwCodvjKwYHEr3G7DIkUdgzqyIY9A9eg25vwvV4YjGdMFVgHIPf0DYDl3xuushnS
	 aMMUuCBI/Tcdato3kZmL6VFdf8ElMlbbk70kDMRjg56LWImqZ3LoWN1he33SajfeVv
	 U68P7gejh8MiTeRtLJ7AhPrE7E4P6YRyR1uR6FxKdtN4pKILUHlPn+wfkRHldvPxn7
	 BtZAwBfHQS+gD2axKOd+BgA7IrlC/zFqb94iRHFTau8I6aKsFJfswAvfe13Lgxr49o
	 svVDDCrAhT40pg2H4m04jgdARDzOCsHGz63LV6On+NesVCbob9eA0b4uNreSjLPAMo
	 hGYRHDQ4XCrZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D5AC4332F
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 23:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166734425433.25683.9795213334089454026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ae4e2ee8dd3ba6dbcdba060b990ae19517022a0cada85d8c2fb21fa6c71715
Date: Tue, 01 Nov 2022 23:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667344254
