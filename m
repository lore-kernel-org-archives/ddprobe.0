Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D69F52915
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CF32C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671786087;
	bh=nh0W/+l59RWGSo1upFssAEXxR5iZFRTKMNDkJB52pj4=;
	h=To:Subject:From:Date:From;
	b=tXO1CN2r1tiJQ1BL76yk5qSngVyhOItcTXI8PhurZIAxpdR0l4OCO8jG0Ten2b4VL
	 JtNGVYtdMwU2E7SFMjx9Q0IrZwYE8hI0AcWzsGIiZ9H2ZC+clEis/opQbCJajYlyG5
	 GRKOBWK7meTY4OiDEecJG7k/4DWFWnBjlnhLAM7FGrtvScQjPFScjuQASJ6cuGi/iP
	 3Mqsm/GbBoaa3Wh02fv89NUJeA3YVFP6GzSswqTyc5j/UJ7spkjU2ez1h9tG1ggqkX
	 qAvf0xMTrufyKkucvloV2VfKsIAOc7I5/RxTbZ4j5O1IVnxbcAaRkvfdYOydYSbqKb
	 kDG0ORjJcBLjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69B81C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167178608742.15763.12361196404434527512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18f30a130952129bf167feb23909ce26bbe37bb9b641131213bd53fc98795409
Date: Fri, 23 Dec 2022 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671786087
