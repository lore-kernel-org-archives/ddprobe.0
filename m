Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF34015A9
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84428C433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674010887;
	bh=XZ+1o3Y4vBJKNCDp3FK1TFmJQxUgM+nU8VkN88H7Pkk=;
	h=To:Subject:From:Date:From;
	b=ly+m+zVmwVDBMs8Wu2FtNQKsujAAw2zFvTVpjMUhVY8vstm4x/NCyOnw//NlNyTqC
	 L0OQC/PkqynQaOpJHQaIvby32rT1QGJ1vLb3xXn/az9aOUg5N2LzHJb0vcr9pbFPF4
	 7wxQQOqOgutzFVzRUf6sfvzOhxhCZ0gUdMLPmlgoPkUoTuzl+PZ/P/1tC54DPYMh4A
	 N8+5WpipmYZS9B8vLbp2UCP2R10drAj2QqbuenKxRR7sR0uvOEBzXbkr/miSpiKakn
	 xuzlghYqxKMqU+wJFbbh9ii1Hpj7ALrsod/7r1lJzJXo/Wzm5Weng9twdhSQPvniEV
	 nf0PwoL4zYl8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6666EC38142
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167401088740.31791.10761084509524482963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca7251740e3f2d552d49c7de9bf36248df332423aa93024b54e41e4d2d1ab7b
Date: Wed, 18 Jan 2023 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674010887
