Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA035613D
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 12:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7693DC433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670328654;
	bh=AcLgKppEdkaTFQErWi48eVtdBC+HAYjTp6txw1IEl3M=;
	h=To:Subject:From:Date:From;
	b=cY33GB2iFmU5xLwA+tEGno8vUNzKsk/3z3YD6Ft9yZFvSY3RXBEY0cS1EwsXde8N9
	 QcY7X5Qn4dKr86rPCv3LQVj60RiCs4KS1RGgGeYOyvizIoFCxAv2791hHenvLs5kjw
	 /IGE9Jx0vEihP/WiqB0RCt9BNze6SHvJ9Ss/NOZXxB2/PGzuWvAmYcO6UfYKq9Nf1q
	 wxkhkRF3A+2sczkm5fRy9cDKGPsUCOKjBSuwc8jllMRxRdDKa6wtvESbEsM6Tl/sMa
	 rP/eN9C+Y26g4vUVXdbqrXzG1PhuZe1h22wvH0wsgEfqIx9hGfSMb5r/PywqzKf4JO
	 41iOUXl8oefsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D3CC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 12:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167032865432.9922.5076834865501647586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa9dc43ecceffdc42bfd5117ea815ec82bb5b2ed0019e361eb04f638cb1482b
Date: Tue, 06 Dec 2022 12:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670328654
