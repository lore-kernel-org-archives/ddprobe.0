Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EBBE13AE8
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 12:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F159BC433EF
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 12:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683548886;
	bh=Q8AjGnscs/2xXeh6bacmf2FwO8CmuhRztz8of1T1qAo=;
	h=To:Subject:From:Date:From;
	b=dlza8G5ibUalzrGhAWSDf0Ho9R1QptTdEj0IqibBK5a7uTruj/0S1HRDFPMyKJLCw
	 6ZZWJQIETMKNG47fXqpxWYAP6ePjLpFunUv/jYaJuUFOgHEhCD8EOWdlqy//B56YFv
	 aHfMWLh4Iu5KU7/x9TO0hJFVEUHK1iu19EmkxN5mo7U0fRfowSxPss5U6rYwn/fbOL
	 MFmMKFS6FzU0C815D5gzkTJ4yyBA2ajJvIFeEBs0r7NylIwjsPFPKz/DTaGP3r7C4z
	 YWeMQjq6zznq0NJc4PTauenOmD6GuH2VFM3vZ6L/btcrcALe2fh5sNgWvBJ/VlX4kD
	 5FcTS+/OTEJWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D21ABC77B75
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 12:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168354888584.8790.3577915239414775456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfccf4f9dafc874c4255918bbe9e0afd1d5c174a8abb0cb42c28dcdc59e93667
Date: Mon, 08 May 2023 12:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683548885
