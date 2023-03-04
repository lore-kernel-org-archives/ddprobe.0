Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE201FD0
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 11:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F263BC433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 11:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677930426;
	bh=AbK7Tpxt5Z6dSv+VzuU6+jHppy1AKXBd145ohD7sY1g=;
	h=To:Subject:From:Date:From;
	b=BJNU8mfSw8Wecsk8lfwdWAscM6cOzrFY/DqBIP2ktbwtzJxcqtvsbbq6nrDBgMYlx
	 0u1WomIm6N48E14Owhvk+sDDcQAsfcD6Y0jf65WayfGRoQqb4mYyUwmJxiTC0hn0CD
	 TMVJoNV1fxiPbtbl8GpQC1IlwSJ+2bbwMC0cPIFLkP4PYxiheNxv14LLztQ8a90Tfp
	 66c6Be5kKec2YHJqrnzKEfCYWfRu9828JJEwhsKmsp9tfvHnTItj2bJn/ghzApCOwo
	 HCNHKVC3u1BNVm0CT9Ajxoh52PKjFJtaE25qDbY1lD/tA8khf8WS+VmpaXzHuW00YY
	 Tr+lz/CA0tFmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFC8BC64EC4
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 11:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167793042580.32041.414705626566685835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03efbbaade59ad9332129ff630ae5b25dbc0d77be9847410d4f4cbb60d45ee7d
Date: Sat, 04 Mar 2023 11:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677930425
