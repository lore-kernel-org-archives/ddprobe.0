Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDDCE2F36
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E44C433F0
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670538687;
	bh=K5MuH2p8D0BW+eWoHipsbtCEaJ4G7pZM2cadhLLhqhI=;
	h=To:Subject:From:Date:From;
	b=k5WcHyzar7U2597qjKSNdrNkNtqbjkB0m8dBtKwJZS99GTUmde240/kabKY+Yxhpo
	 DkBMkJQHO2ULWFF9Rn6kythe0qGsocSS3mbpFs+ZvwqeiC+z5xYpNjOH+4wXC/nuwv
	 lxG9Tnr98vAhfYGp1m0yYI6Xz2kZm5tuDnhL88WAVms8zkaH7oFkUyqlobyznW0nou
	 TE2FVvq6sp/Y4546VUrjYGPTf0kdflgcyB4bIM96Jy7zT2a40juFE93dJsApeOMBCn
	 7EwafnmW9Rpe8teSIK/JqXldwOKerEUwkKNYj/xxGf08tgH6VfJ1vgu0vshqcodQsk
	 ySmZAYqf8wCEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E349C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167053868737.8619.11017416665521555936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 846cd2570e5fe4e4acc3453a201bb68d2aa5bf73bcdaffeb5071b3aa073dcf66
Date: Thu, 08 Dec 2022 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670538687
