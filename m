Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24BA7B
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7328BC433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667368854;
	bh=yu27U4zN0fm/9CkNJ2L/0DfgisadiK47JaERxXs2yoo=;
	h=To:Subject:From:Date:From;
	b=iUOdYk2YERegpqKEMYMBNNJcPOnPvwYND49U3FyFmNy+HRlO1L/NDqcEf9CHeE1db
	 sgdrkYt5LCWCUYGqSKkNZXZYK7jwZV8wprsKQS27uPllhgdHAOOVciMqDdanwjqnpm
	 SdV9AGyLAY1C+rkV8xvHY6ewjYIGXu6pkU2NyarxMT9t+Tq3eCXqMwM0AuZTzI0r6l
	 vNkDGut3yqHZL24NSpIY4ccz7HjfdMaNEDcWEKaOjaLTcNdshrlwZEnCuEPKawfoM/
	 CM8VekMoiJ37r4cpbwkzchS8oysoJ7a5bbbDq1MrYAXovIXMfEoHcaCagEFL5Q8Be+
	 gWfXulxMo8Pog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 562F6C433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166736885433.14628.17989208326476055522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4621e77f8f3984adab7b323b0803f4680dd4fe3db2fb70396ef9d7dccf4171a9
Date: Wed, 02 Nov 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667368854
