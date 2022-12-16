Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA3320EA
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7E7C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671207687;
	bh=b//I2JZaDf2IEDifY1khmwGFvRZ/C+zqrNTbkUAzPJQ=;
	h=To:Subject:From:Date:From;
	b=euAL0i/eqIoiyXbYKbZnOF0Fwh2ULl5XZGj6w5xLeCjM9c/OMCOSwzUjxS41wwiMz
	 +xU2XDcNbgO4ylXFu0mK9bjj/HIiBHWzrjP5OLNKXdwKOHSrl+LaFhMN1QwfFQjsf4
	 3MJ0OmGKe6DeF4HC8QQQ21EShAGJOzclmEfcGSu7xW64FiNCz+UMBbnxXqFRy77gJv
	 gg3FsykZbKcScYH2uyBkvrzdlUzGtVDP1xvfVh5F3L2uqE/zBhF2lPtTUJt0ayVH1i
	 AU1mLTmJje01lZtilg6t2inME4GNu850tNc12x7gPRJ8WZZhqcXgWFWEp62Wt/Thw2
	 8PoaCkoq3jiMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C26C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167120768739.22447.12284183920647445578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e96271404e9c0084a321c96d0ca7a92bdc184481213e9c07d85070383bb8f68
Date: Fri, 16 Dec 2022 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671207687
