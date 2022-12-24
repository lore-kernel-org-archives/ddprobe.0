Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D34848E
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77AEBC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671919287;
	bh=4GoeXVg+iNxLc2x68/PquN7YPkTDdmEwNQD2gaPgxyM=;
	h=To:Subject:From:Date:From;
	b=g4GLdI+cKKn5OZ/9NBqAEveFeS/EXx0+kfCSlWzEymRKqBphvAsdvmcuN6dGfo8bF
	 R9qRutuygJKNnSqdbqw2APJUYqaS2G1jsVuERy1Gr7JG9xXNLlfqc4VahXaYNRypkF
	 zkRgg+o57KcosEW0EXsCIrHcYFeudrGmj2zrlv5nNT88/3ewEn39E1h6IJXFq1g5ij
	 VY73pACrXgzopYcGbf4OBX0+TmzsN+jVqbFBp7DnR3ZwzfW12tb9XCwO8e6lbDwrOY
	 OEG7hi41ij9ng1OY+aVKzVbZKi1hR40KBYtVNIUL1OYluFu5Axb/5Dfc81eeSLjLqg
	 KwZROT3vbuGew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E047C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167191928737.7188.8179919483888323358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2e1f42b15380611906191c84c3b7442f5bd4022eca9c962616534541a330f11
Date: Sat, 24 Dec 2022 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671919287
