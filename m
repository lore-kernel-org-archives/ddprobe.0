Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F000017F0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98D43C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672695087;
	bh=Z9n/lU5g0u+DVLgVaDJbxxQS2H9j7G9DaK6Ef8q1hMk=;
	h=To:Subject:From:Date:From;
	b=Lz5Hr84XHLepTbhw+Jzjj/tixjpiau/oenqAZpODl1c5es6Z2z4JkuSybFwuuGr0A
	 5ynBfxryMNiVlymaKWl2VBRzLy9O3kEGZgjCqFqR8RhwVcQhpLrnpTAoe1dv38D6yP
	 dcDPtY42petBIUxAw5QZer4RYmE7VIEoEcrJ5mrqFDKSWVykokHJa3RhxlCYv17WbR
	 nvqln2MmE8Gzqz9Z7B4Q+q6f7DwOAUoxWw2ZViLmtzP0PUG70dW8dVLFwbP4a7i+IS
	 u1jT2IgVphCeyM2rw5ecbDNXpJq6fBNK68refsGcRpReocrGGV8mdN5gu3UjEnuczo
	 RfHAo/A90tNcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72D1DC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167269508743.18762.7855275578218073027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57fd3158721a94be4fa2f9b2a6c1380d8132e6fcd20645117a3656e9b0a99a01
Date: Mon, 02 Jan 2023 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672695087
