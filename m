Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C98251FAB
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E6B8C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670821887;
	bh=B7z6xJ/dMCUiIM6fKH9evVK3Ph1PbsQNm8QGQuUfMz4=;
	h=To:Subject:From:Date:From;
	b=GRScHSo6r4f8YyEIfvlOLyz/Fs8XCrI2MDuPXK9CMOr3txrEvJW7hLTICkMBD9VOy
	 5lEnnx1G3n7Phhg5DJEXu1OLJ/tfOguE5KUV1kTea64A8E3CdGeJBWQ9BX/1nlp9tJ
	 RPttxGNW+FDt5xnWV8j2kC6hXJBakNeEiADBtJW+d1GiWCTjBvXII6ChoVY2b1NNsu
	 ADMZaJonC69bhhZk+ZavU2siFN64OFa/ICeMxGZPVnFq7DtEvH8N8rmql35jZI4hw2
	 3XoV8Nb8JwLKGKWk52F6G2YrT/8uV+6f/1koxnQX4/UQrz9h+Yjzwxh9UYowvowr3N
	 Jj8pBcx9nrygQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65960C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167082188740.23218.7073085294640377624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f6bf7e21e0cfe77872a26a751c22408a07ad867a161f4c324cd6fb56bebc28
Date: Mon, 12 Dec 2022 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670821887
