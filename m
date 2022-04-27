Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5F67B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 08:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651049518;
	h=To:Subject:From:Message-Id:Date;
	bh=J+ATVLEMSC/XIxGwdhmsxO9AFQJ9IXmdFu41waR2CF0=;
	b=VYbePd7TlrxAbWPBVClB3B13Dz/sryO5XwADNoYWCD+Aoz2GaI7LkCbRNDyvFYpT
	0VItOz4P5gp8d185XjoZjilJnE4JKXHJQAyqjx7KqMut03gSsfInes6tK/YLLmoN9jD
	3+U5n7upVtQ4eUbIm1cYOEGnbgdGWpK16qyWKOK8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651049518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J+ATVLEMSC/XIxGwdhmsxO9AFQJ9IXmdFu41waR2CF0=;
	b=TIIXetSXGhXulumZNGI+wLKx9Omy9qJrXtVUHqpjxGiPXPVl/OqTxUnsdq4ZcHA3
	tvOCucitDF8TlxV4rd34t39A1GU+g/BXVqi+9S8PAOWdZz1AwrIdC7B1ng41Bb6q8IZ
	h99pNQ1qEERriziPveJ96/alCl2q0J9iVIWDrzUI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806a38549e-f0518b53-e71b-46a2-a7c6-e90c6659395d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07d4879b278f8be4fd3e2f9e60896d4102c09b2f965a8d73659176ca91730389
Date: Wed, 27 Apr 2022 08:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651049518
