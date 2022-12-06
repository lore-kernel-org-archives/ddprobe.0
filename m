Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C991920EA
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EC97C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670364054;
	bh=tMW4oWxIVU1uesp0q34pBEvwynGTT+MB7B0gkZhSHgk=;
	h=To:Subject:From:Date:From;
	b=rcCw4S8J1jHoIlVnPn90ApGrPd39jTCxsYZD6KaIJpmIfCFBHdTfmeGFtkDyulmdM
	 5TRSTW77dQZLUVO95ISEFRIc+9D6V5OzTLbQpjtmMQmo4hX0AB28P0fpWCH4EoBI1o
	 e08cqjtsaY2uOCR1gsZx5jLls+nvRYFeHhKoZIrvYxqzczev466FR/dFv9u0yVUJcP
	 wZjuR4Bkrb+7/2DGnj8KGKmOcdA7zniOSgy44iO9NPhjqKRYfuIbj8AaofFSsgxU4N
	 xasUmvgRAun0N1P0VAC/XHmW2+XGKq5sVojHkHx2oHVN/NA4kGnpUZCZwCIBWJIMxQ
	 YToUbzdBjeAwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D91EC3A5A7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167036405437.1825.9222465844418020354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 199ad0b1567fe44c27690bb91cdb671fa3e4eab80106b5cc0dcf6ff1fb9cbfbb
Date: Tue, 06 Dec 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670364054
