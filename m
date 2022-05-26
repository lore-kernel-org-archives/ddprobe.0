Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0367D185D
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 18:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653588539;
	h=To:Subject:From:Message-Id:Date;
	bh=J2dNPCgBEeYkkvduJWnmTLR33riTPUiaAemdgdp65Ss=;
	b=MaxZ32E3K5QwO1XUHyBttBOZuLmITLlt/qqE8NHDECex8OSJM9T11IvLQaay/s4M
	5qhILigqvC+LqUPfUgY6wtevAx2N7Kac9RNi0KeweQpFfA2Bh1X3decjV0sMbWM62gE
	6GdMVEdUfAlnoj1bs0RN6wt3hH01dB13JH5tULrQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653588539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J2dNPCgBEeYkkvduJWnmTLR33riTPUiaAemdgdp65Ss=;
	b=CtidOnDmSvCIbJT3/MdEOtKJrojCzskUIXbvuB4RNbBvRhI2Y8MI6OXEakUXzXVv
	54RrtPqSeuZM8B8QkYL6A6qInldt+8ngJKVUS08DgYdwRwfqepjepCPNGHt1HV1Z6jk
	w74wJHKktLqFZ7QS8qGBZ7ELe28RcSqtkqnSOA1s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181018eb77b-49bb14cf-fc4a-4f8e-a971-2bf7b14548d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77386ef7fac1c754e72548084281c62b4f5ba6d95b42a861809da4c8902665d6
Date: Thu, 26 May 2022 18:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653588539
