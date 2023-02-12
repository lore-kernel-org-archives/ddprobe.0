Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F262FAE
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 17:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC57C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 17:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676222645;
	bh=7k5cWYRFlZKCLpXOdS2NTz4OHJIBERuZZcJqd00zCxo=;
	h=To:Subject:From:Date:From;
	b=tV/NZfKaYv78YJPPa1JHkf4L1qpSTSUY3IU8gBz+EE5gTx2S732BK0oWNk9DdQVr5
	 8Mx8Rdz6EwoyCH96KmDirE3cFNoRVjUMlWEtN0z6T79l7rrNL9LFe5YH1oKMoIldix
	 tY7meN5HFuHkjGT4JEik50Cpbr3z1e3c/IR7tI5N0rizYpDiCvuDsiYv5+TJg3degG
	 oJcdbqdoqeLu9HNGzCvd8ck+yLhT4dsKxOY10Wz+UnqrZdQC6ue/j0Whw92zU3MDiV
	 Y4Oc3+q+72Ob7nt1kFdbgP/LLPJ56vXXuoRXMOsK/xF0nL3RTczp9Q9a+4efBO8lT7
	 VbqPjf9MoUQmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0051C05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 17:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167622264574.11562.3819622233300243600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67b31c8ad40496fa18ce9b613402598349e07e01eacc0466dc3b3ccd4cb983aa
Date: Sun, 12 Feb 2023 17:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676222645
