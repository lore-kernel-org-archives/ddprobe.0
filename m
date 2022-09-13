Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC11C33DA
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77064C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663075253;
	bh=zPtOT2lV89siL1DtBCjj8PwMlgR6B3VzFIsfqzxlmbM=;
	h=To:Subject:From:Date:From;
	b=gRoxDchAXa0HB//LAi36jBEQZwU1l38ldfI8VfwKTfSa9Gn925UxaNLT+l1rtag7v
	 khaeYTeQsDG+Hw2eh1nb3ELTug0SEGeu3DEjtgWXV8hzObx+tlkjGsmw8AJcLNvHCT
	 xhg0Wp1qncjLoSH8rRNBeBwWonvatXqGob8uYXCNZ5g0ZhY/IHrqnyRqsNFlOWdGdw
	 rLNKKFcg34wiCMOe9K0q4g9EfoYDyacu5g0BbfCzFAtEEPAoCA0jHX02IK2p0di00d
	 MdPFn2kLlY50qloYVLGgopjJRnDWKp2xm6HRokMbzdT9oue0VbfrCpDlsTHXfYpmns
	 RGaLGzFPTGS7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F0AC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166307525332.28217.14581535760472827940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c32423b9cef3c0cfef7bed941f489ab14a433d4279633e4e4860e87adf967bb
Date: Tue, 13 Sep 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663075253
