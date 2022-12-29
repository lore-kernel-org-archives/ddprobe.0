Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0421FAF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8093CC433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672333287;
	bh=TNQhV0tduQrISNllmhv5Tyh/DE7aRzQ2Oq5Og6K9XHE=;
	h=To:Subject:From:Date:From;
	b=K8GZFVQ8Q4Q0yiaV7f6PsGGe57Xe+BPIYsMnFPH0q5z0rrH/5wFwFDuKgrHmd5BeG
	 casqP0I6ulM+xyQJY4Zgxl6kL2ghXIsMCUqaZhoYqO4ul+BnUK9abD69I0IbfUaXCw
	 DdK7Lxrxy/dXu/2Mz+aNjB77bLsfnNCyfFJCbbynShrWSpMJhsBVAYhi4KgpTHuZnW
	 8Yl9qoGTR3vTHB2xsy6PCt6dxaYw+JPKdxyc85Kf+heOWYUjL+i8PmDvhGovaMWoFF
	 LSi6xWYKXikRKBagR+VLmcgOt8MNQ4yNtIbumJ+6LJtVd5VlIHONfJDub29GtN8ws+
	 l7K73VYUk70iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B59C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167233328738.11931.17412869502949080863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d30f9735e3c95186ea4817641ce069c43c0072f254ec9defa935a81084ecb887
Date: Thu, 29 Dec 2022 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672333287
