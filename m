Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B888A15BC
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CEEDC433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664770253;
	bh=s/oRM7rmgM4YhFRpdFBbsX0ebb9YEatNu17w7dFiEWs=;
	h=To:Subject:From:Date:From;
	b=ubifTpj2Js4EegeEcMknB1aHr5i+6X7ZvWlXqYa29nvDtnGne18zDvwDoTBzsPzEs
	 b6K4hAjyYknfL+ms9rH2ybcjC5DoTqwrODtimCYtQK8ptrKYPf0WgV4UQaPcvY5bG0
	 BWds1HZ4Id3RJnFIP34cXQDKt527th+EEI0ceN90w5VTcYjmnZBfIpl8wWegdqbI4A
	 Jro97CAeuPPHl6wrghEeYxEuiQkEcirjWa6oXg9WRo3zvbtxbm7RtxZEA9mpckadlb
	 9jaFk+cZu7xL0bg/m7+eySlxWBDFQksa6LextjVX+N1v6zN+qZYpaNg0umFjsWKPyZ
	 /9xIS5Yj35ATQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 509BCC433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166477025332.19316.10241391585533755903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca923cecb1b050be5bf5f8cc83187e8561a9a6a210754b0627ab5bf76d0d986b
Date: Mon, 03 Oct 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664770253
