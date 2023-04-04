Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E91C7C
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 11:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CF6C433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 11:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680608825;
	bh=4duDC9Xt/zNPzDxKwOYTAUx+SPLiHndd1YW930PmRns=;
	h=To:Subject:From:Date:From;
	b=Wiii4Uyj2WkrHw/gr02h3FZQhx4oerpiQtqyYSXV3ihdhNYKHpZwrn7ThnX2Y+o58
	 IN0FGTAjznqKfCOztuv1hZcrwE3S7A21BRf9op8EWS/8+GEpHfkk8Qsgls30RZ7QS7
	 nc9URKFUsxuY53TQOy6zjRPhlhPaT0viqYD/RDqJ2iid6aWCYgHiOLZa3HM2YJBpDN
	 qPwxin2syfPmhD4e7b2fYogL03CLabKWtd7FtYeVTOJSPdLnF+QQEHXzhpIDaW0vhg
	 tmsTivONaY6/Lyvg9rKgCorecTmtyJrlvUc776rNUUFaoP/GH9syR0LajQ2ebTD9Y6
	 l0kSZ5fmaWguA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B77ACC761A6
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 11:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168060882574.25652.7469690354976641719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07b86b5bbd8a5e40700433d3697a3d70dbaacad6c8986c812f6f79b3657a0a8b
Date: Tue, 04 Apr 2023 11:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680608825
