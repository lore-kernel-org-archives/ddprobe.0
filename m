Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32D236B
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 976F9C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671282087;
	bh=P68uoFyDlBWZfkWhFIuOUPWW2inz4FN4/PjY24s7fws=;
	h=To:Subject:From:Date:From;
	b=LXmcY5VnH7hIvfx8UFfVHsjUAXHPSwvrJjlR+Sy5b5vfpv42M9M1fMSKbrzbCLibf
	 sYorjYGVLhgRQYqyJX5cu9AlWfBpb+w5Sa7aEuVEEv9gDJH70V0PJmp7Gp6cx3wDXd
	 qpw0qs75ZY7Lr5d81+S70b+Wphme0l+cyuoIA9D9avQ9EWMs0040YuvZYDFLbEHc8p
	 dXwAUIq7w+jIOdfYeC8FopNl3e3eyhW/fqyupOPElybyemyzkejl4jLjObJopVDGwh
	 SfUol6iOaizB3f1WrYbx9ZwxHxN+ShIN2mY2XOtF+UqLFnWd84uP9PQEHENec4VJOF
	 Mj6vAMoT9+Z4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AB25C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167128208749.13583.7486975629867329629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f75dcc3eb9a54447ada3631d889cc25376c5b44e01c74aee92a1de169a5ee9
Date: Sat, 17 Dec 2022 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671282087
