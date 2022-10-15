Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB99536A
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A8FC433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665840053;
	bh=Gshap86YMoU7xCoVNf0mavJFhIE65q7XuOdo1zJcbI0=;
	h=To:Subject:From:Date:From;
	b=SuvMCNCZfCB8ey4cpZLYWZeRi1ozX5dUH68tz0ilRQnJN+eNd2Z8lbg6T8Fe/F5Vr
	 1/UJIy02heSuLeOhrfAnTr4QUgawLWu7eoRrT2iyUqS9xz5ag5bop6maG9Y3OITlBG
	 URwvX0HL6npQRQAb/9GT+dqXjMmLAefvOFaUqjjMZ1KOUBQhP++3tXOo3eaFVfJ0OP
	 POxlp8KpJxuSm7HqP35hXgaJk2y4IzhZ3hYtLDAnE9WaQTNbi37Q8vLwmp6ZJYpUrP
	 Prp6J+dhevM36qvBtpwVZaDCetRGr7T5EHzXKYPJhkRnOPvg566XMOO3AgmFzKW4nU
	 npqpyTi/21Bgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5431AC4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166584005333.17123.4219099682713432726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 016c57162bace131c52f19349776d8c5cd6d71feee592b9270493a6ea904cc36
Date: Sat, 15 Oct 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665840053
