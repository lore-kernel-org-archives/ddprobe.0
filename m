Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC80B2561
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71496C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667873454;
	bh=amfkHt9xc9Gds48Vs5m4mmP0AhbgZunh1udg5mJDKAk=;
	h=To:Subject:From:Date:From;
	b=dK7o6c/5cIOrqknW2Zn85JFirmjDGD1yaWpkxZgVobj9Ol/tYTYs+fudXK8SUve8J
	 rETzewy5QFC9n5cc8OG7XzCXJ98qwvzL6CSPTn7jKIc18JvUSyV8QJG3Z8aFTpKsRf
	 Xm/9qrlspmrF4peJHK8wp2np2aDBzYrwVTuLh9LA3As08gTN48lNOGZzwthJlWvE3z
	 FHSZGG4rQKei/+hP/7F/3eg+zuios3iU5NRX/cq5grLHSkcCGofRhZXnFy6w2+Wgdr
	 7JRP6hoJppycIW3aumC7OKGyvODnr15qKyFSpdsFi8Fk6ebiKBQ/5gXwriBE0pyh/3
	 NKgxBeqEeEeqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B51C433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166787345433.7968.17279740811668467718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38efa4253a09c7d6a455475ce4eabecb962d056d9a644f4f4dc653716259d8f0
Date: Tue, 08 Nov 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667873454
