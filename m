Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBDF23A7
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 14:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB775C433D2
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 14:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681048866;
	bh=C3Xn13bgET0phJbpZkDkL6vmEnVzS0t5FC33vJtqV6I=;
	h=To:Subject:From:Date:From;
	b=jCGbvi3ALsiRnoFfP1XqzI0Se91Y55nOmR6NprlaVjvELJAzbU9oOwzyymCHgto3O
	 LnEWijAPXE4LdkG0i/rEpmmnjGILhsQ+73sQ7GPU58fK6IvT/aWmVmOhAZbPdvl+Jb
	 Et3lz3zmWhsp3PSlH65fUM9r2oCN7nzg4rnVLbL27h+Bju3B7Hv389726LYPLLbqaB
	 qj4v8lTpsFxpeko3Kn9KkxZ2zky6uOX3nUy4nJBYWcxbcXfx63b0y1yvyyOmiuvKEr
	 s9kzitxSzGmLe8pqA0aDhyI0GetUPj+xScqrOhSloqgdsIUbWJBgVO1O2akYlYHmzj
	 Zh+N4JQpBkEZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD1BCC77B70
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 14:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168104886582.13535.6749916378035420731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fd2917c2099c01c5577fdb7e4ed0596a109f2ff0692daa6bcc6e8101ad679db
Date: Sun, 09 Apr 2023 14:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681048865
