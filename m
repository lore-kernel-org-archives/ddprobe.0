Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68BC23A3
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E0CBC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670919087;
	bh=q2lJ7cVKzvCYxKX+s9Rg2iWmbK+DvNSamGe7wENeuRc=;
	h=To:Subject:From:Date:From;
	b=uGXdh7G9PXxEIpPW0mG3JBqxCH84JpoMbhZcPAt1q4TlkDtDxVc/0jAtX1IzB+Hlp
	 Jvt1kBXZj76fBZUAJUn7VZdvsCqt3pnm4VyO+apzdTuhsc3dVHuvq1i6+lN+zrCU4e
	 /qNVdGbeh3j+pqomNQAQfeMVimFbZyPI0qWi0uDLQgJWUAkdFUOwmegcqNlVBRkJGp
	 QYi3zdNqy6DOVT6SWYD5fP57cv6nr80dWZh39LVP+zMOAlbpMhDcgjdJT5aePs2aK0
	 IO/LBJYJTpmDeHQu0U3mtMZ9nhduR9IcCbUpojtHWm6IyzRbUHc4fxBSlb0VbujDJ8
	 JSjPOaHxiKxpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 619E4C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167091908739.14257.13737927134937419159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b30f995a96a763bc5ce31638238cef775f71cb25217574cee7e28393fcb39d
Date: Tue, 13 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670919087
