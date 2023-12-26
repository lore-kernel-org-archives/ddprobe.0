Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346E7101C1
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 01:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKpo8kZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 866C7C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703552897;
	bh=majFV/ZmnqPDe0ZY0UNRfXlyyg8PH0CT7AGUi9GW61w=;
	h=To:Subject:From:Date:From;
	b=pKpo8kZebD7ujHcifZZDIXowpAoINbNuQXHnA+UoCBZAPLdqImj0Se7IGBQrohM1c
	 eVZDbctaa6wI8k/nhHYdWPIG4TvXahd4nTxasw0NNF9YdPRCjjGuXgSwsbjYdU8JqJ
	 1ME8TZUsDGmTu2SrzDlwlCHGHunSbNazgBqfPLXJcbVSxXRcekbt02y+HozvLDBna7
	 ezMdmZwQMs3DeKjfV0Jn5zcdc4iRl+aUke3UVT3lOIFjXlIS546WEOmiZ0gkKNshYw
	 WY5T8R/G9/YQyPQiMKcovS890Cfo09/IXIW6tmmyf/u68R3R96DSqwM6hcbdWND9e8
	 2S24TkcQUPr0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68458C3DA6E
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170355289640.23678.10056076273210669004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5d5e33dea2e0e7e6830e1c06c46e81317576fb655d90b18849454ca173b1f24
Date: Tue, 26 Dec 2023 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703552896
