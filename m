Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C0415C91
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70605C433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667860854;
	bh=xtAdm+dkaudx9R4rLeWiAvDd8TN1IcFZFkPkyeRuVss=;
	h=To:Subject:From:Date:From;
	b=BMwAhrUbyOZXF6WphjeIKRTxTMiFDsPR3/Q+2DQWCc9x/MuF4/QCzoTBvCFP98br3
	 XqbWtDYf/a98bo83AiMwt5oxGQBFWYZrdz6k/Kip5H7f5T1SJ28u8K2q/5m9qcUcGc
	 4e9Q4wPLJtGKZ0rX+0UANnu+ZreNY5bcvxC2u6uj2QKwID+UzG7PeFUn15rsn9Ym+J
	 7JHUq74yAsWKxlrldHb6f+UCZPAEQAhqQAR3tlMxQE9qjQix4p3TM8xKW1w5GUiMtW
	 uCRVdj0KgfW0ANKvmD9rqAQeXFifiojlzgqR0kH4nep04zhlswQrrJVXfLhylFo6y+
	 Qwr9PWJoq5DrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50814C433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166786085432.6291.2665043354773359220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce63dbea0cd2b1f67fb410130c5246abb424f9c793fb4b5e571873999c3eb25a
Date: Mon, 07 Nov 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667860854
