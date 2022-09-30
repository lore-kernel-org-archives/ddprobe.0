Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C72201C05
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA53C433D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664518853;
	bh=qGV0sPEC8CIw3FbqksFUj1s4b5SFl1yreSQiNeXLR1I=;
	h=To:Subject:From:Date:From;
	b=EKRfHynIEgP8PCkWYZLZWCpMBeuIWcA26HDyREW/BtozVV/BprdJfVoUXI3EYxnul
	 AXbNF771w/s78AOXy7GqOL1BI9oIE59+0IG2N1LtBelSATu+JuMWAaKe7n3jsMKuiv
	 5S3NlFzZzcb/zOtPgUavMAvdKyPGd0Q36kAtxjvSHp7K6QnsrNMRClh9445ZuR8ke9
	 0uIp07GioVsaBK2LijJhNcuPJ9ATnIs8DAhjFjFLA1Ubz7CEaSo2bnaSc8Y2tNiy2z
	 5rK5oaQOcCxl+wpFYi9nFa1bUQaJrvy6aEulhFmJ83yhguZcu3EqWCuCIdiFG+LbM8
	 3pCfvJvOd+KWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55239C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166451885334.12642.18051539678992990507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d05acdaaa2d2213eae059a21307ce268fcfeaed605fd6a872c7616fb9d71ca
Date: Fri, 30 Sep 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664518853
