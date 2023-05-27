Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC3EF9E2
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 13:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A1AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 13:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685193545;
	bh=UIR1JHplG78v/03cw4ni5fd2LfrWMyLkagoKctkERwk=;
	h=To:Subject:From:Date:From;
	b=CF4+VJTis+XUyPA+PAVtZBnmF/9bFaASxLjclTTiFOleXl8sek+lKRtfw4RdQgXx1
	 m+gW1AYeflf86J3GJLI6NnRsMytj98FSoTNgtAUeSwOGLZUdW/marK8ZjQmZW8mZf9
	 njPRnW+oVxaYzVzJpIlRIynAOQcbz34S9YhODx92sGj8CxlTBgFWtrCWKHSfrGpeNR
	 J4U7NbZ+VVg1HM428L8HyJeJTvF+V4+edsRyYbWyvf2Ag0Zn5l41jbWARz86zk8Qv8
	 4sv4sxPCdfxPsm/hBpdApxS+QRDCKOrQJyhsgA4980Js9S0SZE/7hdf+WODtfR6FBs
	 dJUR8bPOm0JXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EF1C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 13:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168519354574.19854.179213012827488788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 853a140b6a4782df0498aaaa9bef7f6f503b084436d519687475a40cd5457ab7
Date: Sat, 27 May 2023 13:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685193545
