Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2FA08C09
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94F4EC433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673295687;
	bh=GYjT/WiBTvQO1YNYT4ej6YiCotmQWjM9BHobicUETTA=;
	h=To:Subject:From:Date:From;
	b=Kx3osbKKwNrTnNXfO251cJP2Hgs+kz9lmB/MgF5gf01ME4x/a30oJ+2kitEfFzL6W
	 BA1WpqGqfW+eQtXLZOMdhmzxiLsCqKMhv77hhnJ71NCY9hGBH2hXSzcqbjorW6fc0W
	 S2YycuaiLgsq1HzByjlLgbhlTsQVBt29/ZtTxUookWQPTkqb9ij2Qep5xIJGOvg9iD
	 fPZlWaFjG3KUO6LSNRsVgz7cHo0SBDTaODs4hTCzgYgoHymramxnc6vTUdgHqo4QYA
	 nryRtc0fxL9OHrKPp3H8S2mxUQsj1cGJVV58fgxavKh5nO650rcENogPGZKNDIZ6JM
	 2zilO6cdOFlbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76C86C5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167329568747.11915.437996486679630742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9a4878c2fb3726d7570c9b5c61965cabcdde8d5f99e4fe0848ae69800f1269
Date: Mon, 09 Jan 2023 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673295687
