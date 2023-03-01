Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E22146BD
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 15:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02CF7C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 15:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677684966;
	bh=pBFRTJZLxMjudL+ijb2c/5DTjGAQHEr9eiMSMxpgPvA=;
	h=To:Subject:From:Date:From;
	b=AVJR2H4RFWmYUr/f7j2nqkCQezclc5xxiycK0w2NhHfUe2LAX/VMCVvO60trF+r+b
	 u/EEX97nUvZ+MjMGcOqzgUHqjEfMJoQraj6q9B90zJw0iaRdB0Yc9GRAxlSozCfngM
	 xD0k+leaVmox1kY5nLkqdqcUOmAh3xLFPJPzWZjPYdiUMwL0TvmoiYaUh9tezwGQXm
	 2xLciBWLbBo9kPGr/hjLhMbFCMq84Bw8et30bO4SSCcqAxhaGe/RSmPuFPrkgEYaAU
	 rPThMmsAxSXWC7VT/yJHBfk8oBkVhIwRoJJNNM6z0/ZWD1UPfXQqaXdGgibGCvDNX0
	 SrdZ3iqDfhC8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E01AEC6FA9D
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 15:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167768496589.8812.1115724527938007233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d3ef83bcfada3f6d25fc9c558d387a55c0da4f93326f072ef8bf0b5bf1c7a03
Date: Wed, 01 Mar 2023 15:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677684965
