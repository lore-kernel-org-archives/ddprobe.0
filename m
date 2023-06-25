Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 772687464
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 19:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFEDC433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 19:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687722188;
	bh=OdeTmsndFT0xjKSeCu9fizVNcoJ2RHjBk7978lSkfNE=;
	h=To:Subject:From:Date:From;
	b=fFGd9kkeDi4eNZvqgiFvmHO8qa1OIgoXJlxumbVec4HkK0XPzwLQTRQzvCzYL326X
	 H6cdba/8LfbXzxUnyCgbg/Thun/+thWqqR7s99lj0Y3BJd22HuSRWyz5B+u67l6lgs
	 7XpnCQhA1rgvrqNIxD2PJf4an3Vv5cTmBV4Zp+ig2GPrOqriSxur0AXw5JXuBZxHnh
	 0WF9nKVQil4g+RntYfQZ49AxnQ9XZu1JEB6pqYOwTKUKzyR1+GT70CiTfWctuT/ucH
	 gYFpegZiBQfZrK1o2a4m5zQFpAotarZJu6VMncITnAS0Zi92zD3qg2gstoJDw6uwLq
	 uhiZnr7f5WHOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE757EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 19:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168772218870.19377.1262440354138312693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf0bd201a636ead56a77ce1af312221de97a207fb8825eb73afa50fe858ba5a4
Date: Sun, 25 Jun 2023 19:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687722188
