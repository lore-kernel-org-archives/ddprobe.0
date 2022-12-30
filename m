Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E47AE259C
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F796C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672416087;
	bh=b0bcGrLKpRbLwmROvfNT4Ge+3hr71QXZlDyfYPLn8Fo=;
	h=To:Subject:From:Date:From;
	b=iHZvHTSfrRmGnwc6wswlGTkXuZpekKK93AyXrh3zk6wSKzsdYktst/TtCTkHkQ4cc
	 2iyT3+7OBRY+PiSr47rCX7faY4eVEm+uHpLTwPnUJ52b2dfFYbF8v1BPYj+FADfTGh
	 L6lHLiEh63wwXrsUcqU9Bg96b7jZARyxudK/biPLljlFn4jY0scMjGsD0/DUUg2WpJ
	 kIrvuqL0hmtsyLhujEYORC88xZYi/PBTCm2Ed9+LyphDkyqdXd4h1fERXHmf/ta7Mt
	 E2ZbaGENRfh7ydrdh5g5BZQyrZPgpuiHhIenbsvC+6lG7LFu3W8pFdki5f1ZZEmvgn
	 6jrZ9pDCvRu1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60467C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167241608738.17593.6068986059371912172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e658f195ff8be10ad6168a8f55a9b597640affab1166a0223f44546875aa822b
Date: Fri, 30 Dec 2022 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672416087
