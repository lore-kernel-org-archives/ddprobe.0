Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C5179D0
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 21:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD235C433EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 21:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675893065;
	bh=4vwFfUPXN5re1V1Yok4Rqdy09RIodWWDdyMebZt9Ihc=;
	h=To:Subject:From:Date:From;
	b=Nu2CnKDcme/E/In+o/yEB4VDQnvUNPkzRt4Ik/yAEbM12Q8NE3R1RrKTOytiyHmRV
	 mFKS9/FNOw0/98eKDY+3L2uEvTmIkajN2OwBf6hxkg9kn944JMSqtj48qpvIIRMmvi
	 +WHm4KZGChmw8UViN2gn0Vlr8enXuzIsqQO7RuZXBKmlRpsEzucobDZ1vG0mhCW57C
	 aqiRPnFf3sBNebXntbOvnqHiofu3jaaIlktYsZzrdlGeEuxhaXjFEOK5/NCIc/P1AH
	 d3YPrJNK+7W90sv4TUNAekT8GZGUfa8RDwLPijRkaJSUfhs7Uepmaocgvp2axUXY9m
	 uRGt7ZmqDEfiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B94FAC636D6
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 21:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167589306575.15909.8228082399454408055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87935ea47ef74ff7d3b5f85fb7ad3894ffffcfc69028b350742e6b1d804ac8b0
Date: Wed, 08 Feb 2023 21:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675893065
