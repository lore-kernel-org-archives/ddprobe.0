Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B478618F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 04:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C923C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669523454;
	bh=JgNgCr33bwaokPwVtDAhRKftPufpevXbCXjyzWKGQqg=;
	h=To:Subject:From:Date:From;
	b=Q5p0fg6f3qAdAdD8w5lMI2EInogrjwP8h1cbdSKMysHCyrNvffZNMQsj42O8mgV2R
	 2wY0lgfkh5NKUG36MN3+OrBpfsBY7Cas4tCo/qm76NDz5OUh+3+VHld9y8jWfYac+A
	 xDy0RwMI7xk81Dp5MiFdzXgvMHQ90kEGldzzs+Za+U3eGW8hRiPsJE20Pelmg9+dNF
	 6oj2It2lg/GPcodw4fZTb+fzlh451ezRQkkROP2KDur/gL8yZPQkjTyVSi4Ayupjh7
	 ogSX8HbKkRLQaQQeYvRB9vnv2QvzU0NwTw4kcJNyxzODTZS90n9jebD6PZGOuE/B4u
	 huPW5x6OUKlNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52EDBC4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 04:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166952345433.7804.11752211624106221368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ea821f55246215a9bc12db2b1772bc47f419e9578d916a1cd7eae3c0c75819
Date: Sun, 27 Nov 2022 04:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669523454
