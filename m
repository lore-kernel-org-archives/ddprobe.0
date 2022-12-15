Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77402F3A
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80A5BC433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671104487;
	bh=O2ud31KhO3qYMSE3MRxC0COA3lR9Ft4tB7OsiKHLR1I=;
	h=To:Subject:From:Date:From;
	b=N1aT+E6sGv7KweKzGwYhucp+zl/H/NwEmAEOtKsJelRZmsAnF8zgGR7HQHf+zgvuW
	 FF/zsT6iW5Tv/JiBtJqIFrtwGjaGgalj0+g9JDT0BO0ujwu1eqnZFbS54NtwuUxW+t
	 RkRNuk21xx39udVNu7+lS95sdg2JEm4cJFzO8J3pGmpELwoVYvY9IQcqhQKKYdQDgE
	 0aYG8e8bkqukat9pIk/YYazY9Rq/LpYI12WwWx+lbvg+vWGofetNVX850bt94864DH
	 vp9iOg8WcqmPxgoqN7Fm/13Hr3Ne2MSg/bL+ARZcTQKxtAKkXH1n8R6jAl8ZmfI9pH
	 +Z6hKcYFtFZtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6327CC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167110448739.2752.2858215377522051728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2e96207f260e7098a167178f031c8baf22fa87910317428883bfee3c6325d4
Date: Thu, 15 Dec 2022 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671104487
