Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E774A35
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DE87C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665165653;
	bh=U1Yn7vgQg6g92KtP8XhkXbpjwuV7j+5v3ITxGf3HTQY=;
	h=To:Subject:From:Date:From;
	b=KTYqkh9urn63LJBm7QZrrBjON8Iak/iwDoch9iKrytFqtrj23k7WR9Wu1ZPoZaW0Z
	 PfL10t6RwOut33Aa6dwEavihtZdHKPdw5i+6crZypwBsmWaY94dFVE6CMTpgIYIKL7
	 hTQp2jZYPNkKewZocvhbZ7dlZvkzGdKqb+w42jRYRuVXyNeHRCmOrR+dCq1r0qeoU5
	 Ryp8D1HjlopIs5Reb5vt+tlUYhVBvKF5+ujYVP1wy0bqOzKN6fNEN75C7PZQ7Xa1JV
	 mo9qBKeWiSPk/WOuX22BR0MRTUjmwdAkb9bXBjH219n3o9xiKk20OBGMVN1sudfqYt
	 RaAqEh+WMzC2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538F1C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166516565332.22757.11344716667752175193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 313d1c2fafe4673ff70c76d5b36b277322549b96424bd98d345520c49dfdc784
Date: Fri, 07 Oct 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665165653
