Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1587B
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A65BC433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664524853;
	bh=RdKEnir/ok2UjuABkyqOsKH4zx6bCY56r2Den+gzZcA=;
	h=To:Subject:From:Date:From;
	b=ngWNHA7IMUu31N8G0kkV+h3laJ2WEDV5oSecMg59WzwXqHqAlZDiXmx0WwRzxUp8Z
	 dDbTekePZuLRVjIlEVTKxXNLw2eEtz5fxY9fHBGWOZG+gX8f5XUbGWKm2ckm2lhNsz
	 oUuSQXwjfLVdp8p9+s3040qD6riuZS7I6aaRT0Ssk4QOw0oEz8+jdBPeKp5tKHdTSm
	 blc0F49Unp4nYuJKSQDZmsMJzU10doZDPRqouid9RFPxI3NsJsSqHrGL5dCApoWhg7
	 FpaGT+nAEf9ZwNDC71EuaGZPAsaZ87cuS5QAIcilbCDVLbsUkQw0AFqU6rIp80rMOD
	 b0QHnfUDGMA9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53470C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166452485333.8798.5475716444842997318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6baca4b4ce33ee0a1a65294630e067c723c680fef41be6e8e8441ee66af12ee7
Date: Fri, 30 Sep 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664524853
