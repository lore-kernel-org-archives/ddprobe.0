Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3375428F8
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 09:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE57EC433EF
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 09:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681376825;
	bh=W2rPqaHFicoC5Vhqd44kSRHlBWQSwjkKL0Ywe4iixH8=;
	h=To:Subject:From:Date:From;
	b=cv3at91ZsX0o2+p1ct9xKL8is5K8lu4oN8Zc33NrPe4m0CnDwbDgLClPMudu0OTNU
	 x5IYK0UGe3ZY3WBfFoNDGSW6IRXppx6pIgCKjM78FmqB2v++kh/t/xKZC0I4I1rSRj
	 HXdYP1ZXC8GJqKsJrTEhRvLwdoZ/1jRLxy7zabne5wmnJFSYuEfDyRI972D9LJcrnO
	 RAJAq/bB27Vr5B/j17vcAs9RjzPOqa/hZ9/rwjh8Ot6vCEag3Js/1u4oX2fT4Qs5x0
	 0y+qogD4y+bIiVHZYs1emewebEM5A+IjWfkG+FSQnCUO3Z5ojDcHa1NR0rJmjrR6EX
	 oj4gfivkIuN5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA052C77B6C
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 09:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168137682575.4466.11163839277771686999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a253ad28ffed5328e4b9ee9da9bd50c043766c09cad2fe52639b3a2b9fe2a4
Date: Thu, 13 Apr 2023 09:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681376825
