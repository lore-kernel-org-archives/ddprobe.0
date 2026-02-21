Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180CB34F248
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771671894; cv=none; b=VP2YAsbn+7JHDOueqAyk5RAx1P4z0h9G3ipH8EjIBgnqhyiI4wfHW6gGXEHvweikjAp+RguQNzbqLZBhBbXcudj8oZrf4pMXsl0gp7PDkmweNDWQsncp+1wlK3zDyxBxYRwWcD2w+qxfnclmKWtNmdHTujR405qsIgD8Huh/XRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771671894; c=relaxed/simple;
	bh=M+Md+c9oVj+QeZXjPX1HwflTljQ5fiYcmAWjOrQkkko=;
	h=To:Subject:From:Message-Id:Date; b=EB4/5+0mvScaG+QlHUE0krQn8hYkcPMCI8JP8IzhlPHIuoeBPe5lq6cqkUp4B+g/Io6TJKWN3VoNMzljqPT8Zs2GMDl/hSE3dAlB41xDpOjO4lQ/HkDJ9z6ZIAm5GCrhwoTVx/EoX0Aqi0o/PPpoPYV02GKdBqN9zM8YTnqa4PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1bFhePP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1bFhePP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52B4C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771671893;
	bh=M+Md+c9oVj+QeZXjPX1HwflTljQ5fiYcmAWjOrQkkko=;
	h=To:Subject:From:Date:From;
	b=P1bFhePPJvaNYHwQ0P776dEV6f6zNsF3VYcjsG83Ekg2TfwEJ7Yt6+ugZ4Zgxts2E
	 4Cnz3IcMe8uZQcy94LFK2r+oobQhpSU5lj/BA5hHm2RHKideOYQMEwmJ69FG1sYhks
	 3QWAFzV5JUSdKC/pSxMq8oTQOaMn6tu72CjWyfFizsh4ZeRu02HmhUME81WXxnG1H5
	 NnNxoSocqAnVtLdXl9Lm2PZ+tiYT7+/JQfRoOkCHP6GpJuTale8aLEXew5mLvK4NxT
	 YRn9G7jjlDY1FeD0T3INkKEr7v61gEN2HlsJT3bNAw3uNPodu+0gr9xAAwuaOXv/1D
	 Ik/6AN1e/WJOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914DCC61DE2
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177167189358.23278.13521557387878916655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a1326d14ac83aac8a7cbe08eb32b97096ac7ba403b32fc9977e8e695eb9b0d4
Date: Sat, 21 Feb 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771671893
