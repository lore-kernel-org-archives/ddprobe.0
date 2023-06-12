Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F04E10797
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 13:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B93C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 13:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686577985;
	bh=Ho2cVRq0++Wx4WG+pZrodw/jRNSjnAfG90JvP6qKeWk=;
	h=To:Subject:From:Date:From;
	b=j71MhZkMlpJn2UNObqaC5gTsyOkxYO7oZvTakaGUEUZowvMpyVq1KLfdjnCaPPXzR
	 QYlWumXJ/JdkZza5tJl/kWgkiHJRV7hhB2GS5GZCiu1vnuR6BKMs5plldMPD7WWYFW
	 T4r1Zih9jYsBp/VF5zUKRqreY5BLstsWIVuHVF0LlX5RQmx5/R13LAldLm24K6O4FF
	 SxCUWnoy+c0d9g7d2fFFlY5t0SfnEAx2NV7QJ4tT9oSatwYBzXb7J2wLD/Fp/ZjARl
	 Lwvha+9Wud7y0kG+KYPPDRSKN4+viGHI+UgQ4SWIl3DHmdkKurhq+vhTJM9NWFTcyw
	 sCjlikUFJk3TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C140BC88CB5
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 13:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168657798578.9803.11594231163750867658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcac51656667e673d0dbc5ac44929bce155c7f4c83c09b99b057c3d1380e7034
Date: Mon, 12 Jun 2023 13:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686577985
