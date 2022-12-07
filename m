Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF4120F7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 13:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82009C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670418654;
	bh=8jNPo2uq/zeoAZfE0fIGh7Ed213ScAg4oTB9/bC1jCU=;
	h=To:Subject:From:Date:From;
	b=HaUefE350yLflcwM1EPu8EXv8P0GrLExatW7UxJFtRoZvONN+yn9jmznmj+Mapwfq
	 J9VuhJdj/zge3ujS+VoaFXVhkjN5yTXIWjYv2V5gNCEKOyHpku4y7u6Pm8fyFiYYK6
	 mJn5p7nHNkcXazOlMU9qXyvirZGqDZjVKW3xrTUYf3qADsO85Uu2YGCPZ2HXN4mXj3
	 rDGlFOOL1gG2GZTDKqzg961lE54GhbQ8icYiTbi5U4E00/Suqf5opMhzMq1XZBaGZk
	 umd72Um1ievX1NsvKqW7Ua3DK6K9vUb0XNoBHfcoZuLcveAyPLDCgvHGBAVugeR3j7
	 TcwWMJ8HaRHcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63681C4708E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 13:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167041865439.15454.3937676807521321556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1fad74a36c4503cc991b3ff722a5637c859d7c911a778af95cfa49f93ac4424
Date: Wed, 07 Dec 2022 13:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670418654
