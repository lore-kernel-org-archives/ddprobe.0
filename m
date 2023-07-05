Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FCE6FAE
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 11:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5781C433C9
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 11:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688557628;
	bh=E98SHWoO2sV9wNZs4oUZsGF8OjteqAsQexAbEB5dR2g=;
	h=To:Subject:From:Date:From;
	b=r8HBGYayFo+3Bz3iOKy17j1k4pehqKmZZq7hpLPvsmgKp8j2QFmreLqL5DN4WNk2r
	 EyFD7A0BOzS5wujGBTRQsuMolueU7E4IuTsBvkgFSYyZ3IfZkQIQ5qQO5WLl9ej8CK
	 8ufx2RvFomZcwlUpKQfdfm+5m2BB5fppVAcZZVr+hBsy4AUvJi/Kz/e8lWLYR5ypmW
	 vBoa0pVh/mjwi9D0IFQe0XV/UjbV9mP5ANvYAs5yE2QsPe2WEPSaYUH2qk0nWfVUMz
	 sZ0eO+jkIOkUj9xj9vK34hUePA6VZajA51kou0PoDhUh1eN4UJ+WBrt0Gy3ftTRaKR
	 RWYyB0avS4lUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F6CC001B0
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 11:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168855762871.13859.4768345580389305610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be9344fcadcabbd4b0e0090cd683ccda73d79deb84c712c3918aa0bef5ffa870
Date: Wed, 05 Jul 2023 11:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688557628
