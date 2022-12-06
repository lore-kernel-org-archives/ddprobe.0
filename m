Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45DA2100
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CAE5C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670308854;
	bh=7m2X8tu46u1RR/MtBr8xplO0kzZFi7lweOO5gNN7OkQ=;
	h=To:Subject:From:Date:From;
	b=YjY0aZ1/Fulm2RLUcSXKcLEi+N+ndhYnLfIfefkoPOCUWQGF4h27xVkzXALzJ6fPw
	 VMyxSgrshJLl9rnzSJ1oI8d6i6v8Af3sOXL7QhFA3Sp6S8qwUmjvrHLHbBYHYet4R3
	 qV0QPIKV8BScPPKYjrhEhBUX014upPgiQ1D9MaQDRkK89frKkYkcefxvqttvVpezCO
	 fa1gNn3UwV7TPlKf/VmyS5sBj+UViM7oItE75F9e6UcjxFwp6JkftE+34+VX3CetC3
	 ShweFjn77HE9T2SM46dzrNM9lL4L6lmQOgNsiXbEUZFQMe0gxlLXWdivIu+nj5e1tC
	 +uJivoUWaHhdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 532D6C3A5A7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167030885433.11671.8806355112451538004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7a8d6a5036cd9191709f0605f20f0189c0b1895ae1c6f995ab6c8673cd46ac
Date: Tue, 06 Dec 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670308854
