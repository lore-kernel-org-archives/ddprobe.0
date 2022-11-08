Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D107B2101
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71226C433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667930454;
	bh=ju0VbpzK9SXeuAjOUDzG4MM35VbEYKU02DYsGDKIoGA=;
	h=To:Subject:From:Date:From;
	b=HjNfiVEJiDyPTN0bOh3B9PGj63AuzJK2trqh6mW83tHeKJDePAZ7SYYf/P3Bbrnzo
	 EMtG+Evjc2fGtlGxCe24W2QZKSuTG6pEIcYrEq993XPyAPSlur93KRoIh0S2l169Uo
	 8ei41bFlqEM3j7Je7omN1yPL7h6VWClX5CmgsolP+12lmf82tmPR0PnbobgB8XNzBy
	 JMNWD9d1lkqkanUNdPPW7XaK4OtkJFbE0vEWwLkLL/C9Htp+x22SQ+kdbB8ZgVGRKH
	 eSCys+LXYdGaWU3ChqDxzGadESWEmiQkBUolgJKyhJYhzQDMNzIBy0tQFpZK/cx/3X
	 97X63BX9elxHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A26BC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166793045436.4203.8033027547981533688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe11384b4d7bff8bc9ac0eaff763662411f67247b183b0de507d737c81e4a754
Date: Tue, 08 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667930454
