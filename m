Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195C610EE
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 06:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651991278;
	h=To:Subject:From:Message-Id:Date;
	bh=qnD90cV+y0HxeKReshndgtUmu/ryRbAUe2nqzU2iiQI=;
	b=L5U1C1EI5hzZkN7rwMa/h0DbpPffbyoc3WjieDPRL1Dh9ltEBd3ivPh+ndu+xJNK
	duiF/O8TGblmlw2+RRncFxLK6ouI7gBKF5AkSg/JRElRzhkFSFByth7cJYQuoGLHh5h
	tZcvn54PxvvU/pdwmwXZ8Ke/h4AA7Vv8BYxOlT4I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651991278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qnD90cV+y0HxeKReshndgtUmu/ryRbAUe2nqzU2iiQI=;
	b=MuN58S6JUSLOjOzNqBJOrDa9gfMfcbMEYT+ZQqGbt6G02zACNNhOypiYGf8adLVY
	X3dePU4TSARV+scNEFIoAvMEcaweGJNM3vmiKif2O9hpX1omDLd3qEh+xvxhPOZZMf4
	HL4xopG+py7N4lZ1HSk6YAbi/gcO84lAnHnfe6KM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a25a72d0-8acc5030-bad2-4903-a7cd-fa052aed8572-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a87d543307d9ed0595311c1317ba3a57bf9b0a6ef5a152fe01f3607b348f994c
Date: Sun, 8 May 2022 06:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651991278
