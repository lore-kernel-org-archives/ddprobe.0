Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB43A17E8
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 03:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69A51C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 03:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668743454;
	bh=qd5aaQNG+W8UDvwdfjJQ/jw7ChnyrPhLzLyuJBI55m4=;
	h=To:Subject:From:Date:From;
	b=HRYBrxUZ5iJsTnBZDVNHCGKOwCX9x9xzrORm3jYbzbPlse0vvu1WW++QjLbFVB3EM
	 tGjqTwY9Dm1EVf0ACKXk01t/cJbBBBlM5jO7I9+vfmwhXsS05vHbjSGLu9HOwIN36g
	 ULAFthhQqp/qjai+0f/r0qY0Fru/7jfnT2HuOlxaS+Z+fnh/Nd9DvN9e+SciMLs22S
	 hohDwa83rrfUizIBPoXslgIKnPb1f63xJIpIV8yxDCIHLxKj3wP177yoxJZRBqBnGw
	 18bHuzxZbieAUCOAq3SjQGvlpKJRK2txvOVxWrJ/AZuO92HDY7jZ3/dIwyZqzNCK+o
	 nXklAloLGDt4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51713C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 03:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166874345432.32645.6328198000517000345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 554e10d2e8a1b7bb6cb70ba2ee8c171fa0394b7abcc0a1c2e202cb1826e91851
Date: Fri, 18 Nov 2022 03:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668743454
