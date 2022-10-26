Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1E56A28
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A5A6C433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666780253;
	bh=Rpop80tw+ioCR+opkbN0FBa7zBfytdb0KXTV5uM07jU=;
	h=To:Subject:From:Date:From;
	b=UTcKgXk+m0elSgd9NQA8YFb6iF7Ag7lBrWWbju60Voqh998ZBY6XwQY3TulMiUiZ0
	 ge7mkb/VM8tubQzVF+pJeWn/cKIPyrY4BogBH2INgKgxXSPvrAW/pFHoFQmKk5TNxb
	 oMSyXC/kjVotXu6r4MEwglXBDBf9Sq9clyYcd23xrwRpFUge+Bf0gN8Fv/E/I3vAQ1
	 ArvyPYHHjPLLaeYb+g4q92iuf+skY+RpPgYYvOqacrNsmBRWkYHlVojDamvkXV8pNP
	 tqe4s01IbIp9N3PWNHFscTduezmZfYXM+L51LGRYK+x67tpzLL/zVXuoKEntxhA9UD
	 Fuez6YVpynHJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC93C433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166678025331.6194.3635968715987987664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c793972adc6e26c458619010d1f010e6cbe192cb884735bedd1d05bc79f9d9df
Date: Wed, 26 Oct 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666780253
