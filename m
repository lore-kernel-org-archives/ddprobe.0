Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D40B910EB
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81605C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669945854;
	bh=KVxYnw8HfeRkhC6oZ5UYBTnKz9JePO/vK/IUiTkITr4=;
	h=To:Subject:From:Date:From;
	b=TWgTW00pxGvanD7ND6uLH4DihQgpRuMlUjGqMv1nIO+o+SNSHRxDC6Yu+cgYFfHBO
	 kzLjpQMDho/levUmxiY73/ngh6NvVgKCv8G27i5kG6qYomHSKwQZDW8eVp5eM84AZ1
	 COPrN8aZ/+PfEegnJugFUlcPgZmT9XTncxpWmx7kcRd2lK71Mn8yGEu9NAlwRpoPRy
	 BrgvLYTTSKI4XmSfZIWQmsIH4AeKIY4glR0SWhWzP2U4LuxBLWaR+hPoAH04GJE0UU
	 rFRQOd2AXamupy3555cdiN3NqjqZFcsd4FfmlTrgPR+v5myF+FXNkU+u9Ac8DVc/XX
	 aY7Tl6yr1ym4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C72C3A5A7
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166994585438.28562.766647214584913822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4334126d05c1f26ce88c82fb37a4270207d43795356426c02a1a05528361d962
Date: Fri, 02 Dec 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669945854
