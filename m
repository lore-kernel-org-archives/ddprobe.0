Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D51B2653
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7899FC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665813653;
	bh=2lDMeAFn3TIL8LmyWflPvazc49ZqJrTr7Lhcs7t1Yuk=;
	h=To:Subject:From:Date:From;
	b=UzWqtEESHw4hUc6nRLB9bfGLwS9cfrw0zZUyPi9LCXpWc2+nJ2UG3GMoQhiyebCXx
	 I6ZanUb4Qc4xW5Nd5/CkY9RuAhYjyci0Q9RQBzHZ5RAb3y7iUg5g9G91So5z99FZ8z
	 4AONHHlOpk53KkRdVCc6ZFto6+PeZBmq9l0OizJEC/45rXl2msQtjveUWnVjE9NhCF
	 R3sPWkn7bo2lwWNoWlVTNjQ4TewTKtcNRaaZYqBAr8NrVC3AuWGfHSLEo0eW9L66DQ
	 vLIsz+ttg7U+YYEhPEWdHsmI3ZoFKkyUdPdTzZXlx4p8fagoeDgGpgrAIRv7GfOBAc
	 oJ04/BmHwM/dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D8AAC4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166581365333.30415.9429989369026080895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 340a172bd49154951d9934caae9a5c109c5e801ed747a6fc40754adc244c6ceb
Date: Sat, 15 Oct 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665813653
