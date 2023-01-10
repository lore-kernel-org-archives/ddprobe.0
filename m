Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A67A93A
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87F33C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673372487;
	bh=wYdPClObjIGd+Gfpvd8KAxb7HFvuKHWls9PazWKqcRg=;
	h=To:Subject:From:Date:From;
	b=WpPkNTmM3FXvqxUaeU5K2GPWHRjbF3k0hlijj2Ak9QXTnY3iVYNUeDUU29hKXUyqy
	 5atQWwZdE8iIy6eet0vlsNZSW0vMzP1WTrhoYQ8JqQxmsXRZHDOYKwKjEfAVno9iz9
	 p5NmWxN9SopoAnSKcwbAmKPFmeXV8bbb7NtLG55KWJsJC96AJdH03aPYl3L0y7theA
	 qmANvPSS6ySjrmjBUQFdskfmieRuOULasuAS3ocjghYjBbhv/kcfEDF9QKRZGnR02R
	 kJJGrGaeeIUJGj772qw6y1XwbSRWS/4bZ9pX0GOaqGhiO0WoO9HlpiYaoFRHQJ64R6
	 dQuenRVpZIdtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D280C54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167337248743.11920.7132297033618424181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30be3c86134b5c442bea94205dd30828a2b979cf15b94e1ddca02e1da5afc0fd
Date: Tue, 10 Jan 2023 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673372487
