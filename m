Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F334B8BF1
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD231C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671310887;
	bh=XG8V/Xe2NM7ex8+8JpaCgkEd/YR4TBtzjGuolEeZlCI=;
	h=To:Subject:From:Date:From;
	b=gH8guz9EH5wavGaW5nL1NRWJ4/d2WVlFLQ/x3LX+hKTk/Ej2AkXozr+s3H+x1eYDU
	 BvDicfpAu8/S8L4ROue34zPRk7+mtP9XGwPXNIjOEjLrNEog4yJ95N3cjACTF3Iad/
	 +XlypTeo/BzjXNvVuYj7R0/hbbqvHbCZRbMo2aJ1qQnbkhdc4vfLzcHNW+2p/A/sC0
	 ko7ruzjIiraXZ68LsmRA63/21HrPmWpQwWj+leoHavE5kI0+wFwgMuQyn1k6sY+r/s
	 kqjbXBCNaWvbzuVEp3crqwkH4pS9ybkR9JMdScfxlZswte1os0o+bmuQuuqSZFbbYm
	 +vo1LGOMkaFWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86683C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167131088753.20286.9046890661885557757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6acfad0fd785223b154565766dcd83c518a92252118b3bd800a2f74a29799616
Date: Sat, 17 Dec 2022 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671310887
