Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D488B5386
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B68C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666127453;
	bh=4ljxL5s0vtUH6iLm6KXx3LTwMHCWzjUHa6VyronLiB8=;
	h=To:Subject:From:Date:From;
	b=pjdqsXmaklfqZkKvUYn3u7jCYWibtx0QVjTa+qqxy9fZOyCwR1ijEbHkA7q1sYOuO
	 /30yBIdd/XUmlsctqL+VIsmzuqD3yl8ga9+di5GlzxYUIboLJBGFyhL5ViJTFFwd70
	 t8qQq3VqDeUkj5pEroCQ5ASAimwzKgCExYkuyGzdlbGM3Xu1Af4nEvzKyFOoT8haXj
	 tNOLvXSb1tPkAC7PIrfQELwsN8776sMSA8x9Og2jWBriW3d+oVtJ8tj+frvMIV7CAV
	 8IYspKf8aHCHc4BD/UNsT/xnFAxPavpVNZTZtcHZs/GGbF62WSpLuk13SwLXd/kvfi
	 3GTwdJeUI3Alg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56E35C433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166612745334.23907.6832530053206605130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86247b05a97cd5ce57c937282d5df0fff35327abfafc2b753395fedd26077ddb
Date: Tue, 18 Oct 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666127453
