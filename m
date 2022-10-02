Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25CB15A4
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DFE4C433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664700653;
	bh=Cr0So+aHFVTJQL2aURuNhACx33O+HJf2EvzgmJtmuqU=;
	h=To:Subject:From:Date:From;
	b=RomhCng4mgCcOOoUGIbsKg5TJFaxFBg8xLeKPoUcOaHohu1NNcaCYnhu7+jKPlkml
	 F9yoLOqPPrmiwOojY46f1vVgzVqxOOJ93MtRKKETRgGhoZo8gfSd8jOO3Ny2piviFp
	 iTG0zFdMWVkLP9iMawQw1P0tjzZpjkSKPqfcondGnw+P+Yb27RrhSNPP09T6F+fmzs
	 XsyZhOY4435czN4zODVFaPc+7tR/wNM4v2U/PI8LqBrnfxG94JqRz1zzu/7FeIbC2f
	 nUqlec+MqfV++eLwSdQqYMM4Y4Cc0hKVl2Kk1g5divrfedldUgrdk/qRVB68t5B3kV
	 k9xiXDxC4XvVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 520B7C433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166470065332.7170.5994267031284251912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e64bbeef4eacbf9a9c685096b32e4dd6f87c1cfbbcded0098c0a4fbdc57b63
Date: Sun, 02 Oct 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664700653
