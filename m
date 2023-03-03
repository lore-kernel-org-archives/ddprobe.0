Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E551538C
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 12:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A9AC433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 12:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677845165;
	bh=aXucF66cbVIIiisy1mMOB46t4pQhoX0hcGouOtPT0Sk=;
	h=To:Subject:From:Date:From;
	b=SRMj47a5YfsIzgkRYPsY3+Duz+LAZKP7aRpYSymn246CYJHwJFBm/YStuszYXGsUE
	 P5opMKYn6FXOz39OXSLBWis2HXt7tlHz3ZxtQdH4DC4lFsXGfUgd/AsAuWIm0dAA6V
	 YBwB6VboGCtXRalGfjUkXdYqJTfEfoH52aQIiDDJuGWFuEIqmfFg+EorIFTeJFQGXB
	 viFnxcclaMuagViVggyf5dzJ5fOPq+BmwU6RmjpMydX45mZRGYwwNyl5sWnVp3Wb8P
	 f5DkAyKyGSMCs9XkVgAZXc/eGJ3nsA9usp5RkKXdRmNXTnwnfO+JEaig4lLRPZbJPB
	 DaFvqlqnEV69g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD404C678D4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 12:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167784516576.26708.14454400521898834112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 772db6f2697a4dd6622836b797154389dad3830ed0a663779569d2717ba3e909
Date: Fri, 03 Mar 2023 12:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677845165
