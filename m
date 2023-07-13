Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF4D17FF6
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 13:59:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB00AC433C8
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 13:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689256748;
	bh=YhR/DvU7L/s7NnLse6T1dYE0X9M1COiUswaXzIdiP7c=;
	h=To:Subject:From:Date:From;
	b=BdYyzMFag7EqOC4nh7l4ZJ2GGzstircM3eq1NinA5ANahrfvqy3TkAyC6VNtYhTJ0
	 CJQdeDAHC5DJGOnKL3K7FFkZapOLVWfTxoLjVJ+skQ3Z9IkUEKkqdMn/W1TwTH2KpK
	 NtCY6MsKKKh9IA0La2bPaJTbmNNIDKVonQFFcr3AbiPxdijsx6W1YLF/93Ozalx5I+
	 A+xCV/bc+qWLv+BxvnjIEHbRrURCltiK86vhw0Xs++kXn4d2+aC+tOyExqWEluUIEf
	 BBtPTZfT+32sgj4pu9M4RI/TAy8vSxgC/LxPPYNKd1ZJnwaPNrDJ3qckE+wOitL+HJ
	 6hvhzWU6rp5vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF951C001DD
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 13:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168925674870.29193.7257052827681592619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87630169437f3d74bed7fce1188873b578f66afe8aee74d00abcdfce6bffa94e
Date: Thu, 13 Jul 2023 13:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689256748
