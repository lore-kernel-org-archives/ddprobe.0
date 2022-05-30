Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099BF7A
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 01:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653875699;
	h=To:Subject:From:Message-Id:Date;
	bh=obyZQTdC+8XbZ/2B7wJK4EUAchwTr/QhQaYvEArzEXA=;
	b=gqyqlyJExDH6fC8QdX+nlIJ1o5KHUiUgKTZONvZnCOZPCSHyG3nxoK0hCDmdgcE+
	a15XUEBnPbrQ0zhBeiBTBFe0FHOFcQb/FiTtmI0i6+VqAHsfaH7GNAl/NzM8H5gqR/i
	dpQQpd06e3vHk5WpQmtkwMHB2HUAKu+rzxJicn1Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653875699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=obyZQTdC+8XbZ/2B7wJK4EUAchwTr/QhQaYvEArzEXA=;
	b=ec0dEq5xDm4VYMw0grtxZu+FzNpvirNO0GvoUeT883u2lefwd5x8jJXfloJthFss
	WgcVb1EwgxK2FrezSPTquy9J+jJwHMkJwdQW4HQZc48q9W2WymnOu3xNOzW79QWKUoL
	2bzJt/jJC3DUBxf7qc6bDdhrgxGLZ9HdcxipxRZA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018112ac6e67-8c6a5433-505b-4bda-bc24-d4a2a24f4a8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6dfc87471ad17dd4284e70c656e12c5766f859d8152b9e4c688112bb4b53e38d
Date: Mon, 30 May 2022 01:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653875699
