Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D621112
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD192C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673070087;
	bh=WnYVc9moUlBke0UILiZZX9yYsDcedp1KCbL4JmkA1sA=;
	h=To:Subject:From:Date:From;
	b=sjtynpQik+EOOYG9u6wlmZI38kMcnox82PsiuPa8fnfdAsoRAunHlHVzG8Juqsjye
	 lcCjvrSGrwaYxooU1RNeh5npVVo84vz6dt+X1pL8zzRsGg1jFABObAdnABvlly2zbg
	 AOSyjpB5kkjG3s/4lQMeV51Nq+jrIC5cdnpqPLT9KmNIzgGMNmoN5RqwSAOv6sR061
	 igUEmB5FA6QaBnFVPnxzBLmM2815GNM2FNbbVo8sDUImI4V0aTKhd87CARlLt+gl/V
	 wycrZxhRDErnHWySTL3MXfwWffPR2H+siASQ+KqnqleAA10R9Pryv/TD4zEHMoBee4
	 mn+34Wq1g2Dug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC92C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167307008760.567.4740582234065845769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b15bbc3c2999cbe42eaef43e210620f124d9b6f91b3cb4cc4fb001dbace7fca
Date: Sat, 07 Jan 2023 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673070087
