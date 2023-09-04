Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88A09C2DF
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 16:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAADC433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 16:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693844048;
	bh=otLcAo86cTIc9IEhbUAZdb2TgFZGQ+hWGRXK4QSELnY=;
	h=To:Subject:From:Date:From;
	b=iDQuFIMM6JXfkln/6hBgAX6NRlucH9ySQkfxB6k5CGf7c1MNbA/3F7FkMqORpyxCG
	 0S/6mx3mekwSkTf842YPeFeHJagqMbymDJ7yjBVvpQjzSmi8RJuKgWyVGa8Zg26OHS
	 kV/Zhy+h2vtOY6M34VV0uPyGappmvUaWyD0BMAmYHJ3RU4RlhD7o+Rhd9XqDwo0p7e
	 b17dlebknulF54Rqb0G077cBpLE6v/B37pk6VuS31QVTx40acA4b2bPJ1JoA43hc/x
	 YyjoBxZSDQGqMWsoDe1sfbHxT+vuVhEr6V27pe/0useCAeekZ4B1w/WBpyGza3Y68z
	 UtwZmtk29+s1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A5EC83F2C
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 16:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169384404872.31003.12340655308942955572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d32158f487851447bf520981dcbe3a50b5c3c550ab3d8f08c32e1e78720a3912
Date: Mon, 04 Sep 2023 16:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693844048
