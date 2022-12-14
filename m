Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8B243208
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 917ECC433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671048687;
	bh=o63IP1HgkUnmyjPL7q5H+OUsN1qELLohwqsE8l6ogOY=;
	h=To:Subject:From:Date:From;
	b=h1XOrvS9iS3J2R5FXFK6fhhkN6mxkWi7gGeG0zo7fVdgfQhhba6oCFAWm0FlS86xP
	 7yJOhQZLS57DEvMOzO1h9I4fob4P8k+hYyBPkuJJkbklOTEKVjS/B+uV0sl/mqW1it
	 +55yZAytUP+fcQCVBNtirktOb8BP8RsbDPUjwr7SHDbiEYBFmp3ETeDnfY+pI3TWGE
	 pjWeJRFxSXfqw4ujH0Z9pyQ8tgFpKNePe37gGoIY16pD4IblleH3UOGjYgD8w9nQd1
	 nKtVnnmenVCxvgTPVnqZ9H6tREPH0L/R4dWgpDNi89eP6+22bvlOlLvlnJCzOp0Goz
	 n0MAavVxl9CVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 723DAC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167104868745.10379.11875594823340498875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c8dd245d46aa7bf3bd0de13d216e90ed43b738246939d9e11319a3419b17931
Date: Wed, 14 Dec 2022 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671048687
