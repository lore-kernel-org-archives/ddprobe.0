Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02171433BE
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E054AK28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 797D4C433C8
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700065096;
	bh=ENbKiogA2wazeiFbBgh/Li6I+09lf/CJwt2dovpN6FA=;
	h=To:Subject:From:Date:From;
	b=E054AK28D5SYDHGmg8WjfqCSAg1+fIY2rMFS0NqKcvQW4sOVqDHlk+jjYOc2RMEp4
	 aphkL0apgK+kmb1G1X6KV+UOIt3hkepTl862nzFWWk1oPDVLsdrJAliMp5+8eTlS+T
	 5zmyoBUy552MEdQx/z6noEMEzUdCczaOWhLT8RhQjyYe6GgcgL0Cb35xOOA/zLCTv4
	 bF9PX8zJjwtUjLMv4mbMwqXP0FDX7EcFQrpIoWQ4lU+H7k8XPIuxOUyukeL6/MbeOK
	 dwXAn7+OZx8BLo+KV2hAhIoi4hJtuQOsNajTwU/wuLgWOil14W+hwUdKfRNyxy2scr
	 93FVC7cVWGYbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DBF6C072A2
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170006509637.31761.10284399352955538669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ee7caa6c8f19fa245d8157c7df3a58aa772254e1031204ed00ba39abb387b08
Date: Wed, 15 Nov 2023 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700065096
