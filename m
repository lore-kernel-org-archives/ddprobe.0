Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B55EA211A
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 08:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 670BAC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 08:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661763052;
	bh=p3pYqiHe+9nci8PJRSbO1Z0nlsSMn7F3vxn+oZ3goPc=;
	h=To:Subject:From:Date:From;
	b=UY3KY+XK+BG3dsb5IeyBl3UPRu+VPhZu6f3aCitr7mu9Oq7tq7878s2Iki7JNVRX7
	 sfOSFm9akv/709Q+pZ/WEZkcDN2WKrmDh/01lUuvhxXbC9rg/5OqZi1WhTfq4v52/5
	 5E64EaPK1l2+SgXHhgP99JNWUxkipi24Q6QDsCX+NiEXgjmZJuTAYRChP5CKX6Ejw8
	 qNoNnGSEhJO05q0ebSSb7MiYpkjjXOpyohciuCxK6+iIBqZ/NricRvSTh7KZSt1Nmd
	 EJ+V/A/IQEQbf7Lop1RrL5XQO48M3WgMMSCbd6TneT48dvunOVVx8pR6JBqpFtEiOe
	 hc8yKYXKZX+fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5134DECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 08:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166176305232.26275.14922373445764129801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff3060c6b6da826ea626d6c5ada06e718587f0257ce8421e6a6f5d0c82b2990
Date: Mon, 29 Aug 2022 08:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661763052
