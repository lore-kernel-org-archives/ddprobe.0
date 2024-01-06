Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA5D10F9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+Zxeh8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84312C433C8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704503896;
	bh=sD4ZKMSGF0LwYEZJ0sUaxavMKkqj//zm71x8Wi9Wb2c=;
	h=To:Subject:From:Date:From;
	b=o+Zxeh8DsUUq2ORB8fx35P0eXevJryoKZTlNJK0eqSE2RkTMbWx5D/kHv+2n1EVEu
	 sR9Nnugc/yExs9Yi+AkDnsCONEDs8iQLLa8AwKsMpZbfIJMnnv71RLn8vl9gu2eFd4
	 dUfhO6tkfNFLu8ixOjMWG/gQSh8fCi0JxfCvHKbIuXw0vW63mhZLM8g9ezSb05CKhR
	 7XtD49ppdmiGOJ/luJgGfLpt5piJAqnDB5pAb+aGpZdLu/a8f40XWZ7gUbm78OUO+u
	 4mzN/e4Xv4xzrtf9qyznA6AJG50zjg+kRsKo6og3hMWer8tHg1bnIBL7xktBbMMkJb
	 Xi4yLrg4UXqLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D070C3DA6E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170450389642.3928.6712010005907711937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a7ee4a7d5491de5bd39bac0eb0adf7f38a55aa63a7eeb2cd2269242b46d4401
Date: Sat, 06 Jan 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704503896
