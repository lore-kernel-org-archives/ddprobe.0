Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 858863B21
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 12:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645878084;
	h=To:Subject:From:Message-Id:Date;
	bh=kHbZ+PEnjMoIklw9YVOIM16axkQyHJeAn4NVwuz6tw8=;
	b=bdmdWTYHWj/f02hOu8j2rYTmJkNC4vw3dxu46bfTOdqw6t9iWx0FDeCsfFLPqMxV
	Ll9mkfBiWRxKwxHuyfc47dYjI0K4UbyFmZ55GFEKKtDdJtBP2WZy0Cv/4pV2L5EYWBb
	krfdmagl5lKdHEj22kH5PR6D9lUJRJGISPhc2OEo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645878084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kHbZ+PEnjMoIklw9YVOIM16axkQyHJeAn4NVwuz6tw8=;
	b=GAHxeTXyQIIkNAssCIEhmPVRwSFOdTmLge9WWDO6uMG2vUh0EiwXKvCslJoX0Yrw
	aH53PMx4hq4fFmMVHHauR/f+9lX6eE9dLhqqTQQNES5NxVBPrPnU+7a2veX1q0IijT0
	Il4PZgWeYJAgmAX8uiiApG4Fm4jJFaSLElS8kQr4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f35fa84dc-7a5995c0-3bdb-41f6-a8bd-b7e73304eef7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2879963fe5c263544dad7f4f97de1b64df38a1a0dc46276502d3ea95782b8e69
Date: Sat, 26 Feb 2022 12:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645878084
