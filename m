Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEDF77B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DBEDC433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673906487;
	bh=02Zzs1o80BgPI1B0Apf7uDEg8alNvo/67h/09HJyDrY=;
	h=To:Subject:From:Date:From;
	b=DTI4wb/umSRXJ2skFNQNcsELfFCoAOwc8VElT9YkLmpParx+lUJ7jrs7SElxBfo6h
	 LZzKWnA+i7JOKhFZxfbFhWgE9AWBXjlZfSs5ZV8CCTHSXPxl5PkM2rGeUHlsZ/Y7bf
	 74LdCuMm7768uqQDSsAVN66zgbwHgwZ/jRzsncS1gex4X1rVPLuGyjqZtqn4N0qCed
	 CT0OLs1xT4OrIYby92IUou+dwf1DSZGngN+WRwjan48J/hGESKgxhcgGCQRCbiVz0N
	 afgbmmyx1l7nxi3CB/vqiW0VSOvct3PUIq8S0Mh9Xp8p6wzkZ7FYXy+E4HRb13BcLF
	 uOYuF7wLYhcCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E989C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167390648744.29702.11749978531302104703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42821f8a0ea8fb0b0eb046c0f8d8481c0795a60345c09d9e645ec894c534f7b4
Date: Mon, 16 Jan 2023 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673906487
