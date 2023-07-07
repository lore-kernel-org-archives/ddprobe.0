Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490D87474
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 08:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D055EC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 08:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688719628;
	bh=hYQprG3ZtuXSBIyONeNuuvvxGQ6SM6rtM1wW2hM/hXg=;
	h=To:Subject:From:Date:From;
	b=GqxUCW9VMghurwwKbXSHI2Qe7Y7mshvM072hwQPYSLd9jyp9+BXIu20+lcnC3X0+f
	 KgJcq4h1ZIjij3B2xyDof18YuzV7omykNXtnAmp8dJpOP/nAyvLih70j2sPUp2lLK1
	 rDuif+1IfLe9Mnt5vC8ojTBnQx34OdmMPtzRfI39On/1UcADNByunBNApJM80btXwl
	 CK+DKgND/t2WsvalolhR7Z87U6oAF44erDiYI26q+HreetmFWf72CgXoekhZyfJk6N
	 i/TObzg2i3+/6rM+pFJMxthGkWq+NebowjAF4I5gjiHv6d5bscc8BCsqsAKKiSjcWe
	 2vl8cs9EAiwhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCD7EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 08:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168871962868.25694.9572573669591559128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03034bf4a5d3560ac195a1a5cc04b5885014789072a4e86b9304d98578f34284
Date: Fri, 07 Jul 2023 08:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688719628
