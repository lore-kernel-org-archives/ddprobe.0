Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D36314A82
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 16:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED252C433D2
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 16:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685550846;
	bh=gSRN/vAyTd88p3QtLfvHyl/DX0uS2xhlgykkoEVKN9k=;
	h=To:Subject:From:Date:From;
	b=TcX5eHMiKpa1x83KETewS1hJTphNDUbXovj4N2ZUemJxvYKBd2eezcpnSMdKcrUCh
	 BT8VWGpt2107/yNPFsY4hlfM13nlf/zzTr+fuoYOwdN8AUbLfC4r5IjRVrlTmiym9s
	 VP2zgRm+ggek8mAbvYE9zCeZQOsguutZDeJluypqurjeHr9ypnXgThVUaVZL45F8U2
	 8nqVRWDWhcvdY/PXg2UWpJYcPfkYoLduWLvAnLooO5FwttWYtne+5BMzna5MB1Ssbe
	 dY/CLyNi+ve1jVd/gWT8OxG6JQ86aNYbYNld5G5of9Zrpe8hoyan+wL/04W8ynBrGS
	 0zetGnvE1jhcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBEC8C77B7A
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 16:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168555084582.30773.7744544750093449058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad7093fb892641e83ef6cf5340253577904c711a01504d04d4981a81870cc5b
Date: Wed, 31 May 2023 16:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685550845
