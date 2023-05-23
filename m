Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673201F173
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 14:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDB75C433EF
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 14:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684851786;
	bh=KiawNFzV9DhW7bCyznonUvTDkor32tPEchSHFdG7Sgo=;
	h=To:Subject:From:Date:From;
	b=G/6ZvCB+4OtgGvEgBPpGyVsIWoiswNDCaSQdefSDm1S9xmNTgSTch6oJ0AJYewWuJ
	 lN2l04BY3pj3/EMzsmGmdgerLfU9Hfg48e6mOYRdIujnNNFw1zPwL6sv1BJ7JXLvS9
	 +MPAablSN9aLIzhl+A/bwHPc43vG6kNrqCBy9bzvGCppEhgbO6ls8SXjhDOUDQMYTx
	 z5AUmB8U+2VIfFlxUaCU2OBfp7bcp7z0CvBC+D4+3kuJw0ePDhS+tY7K6syE6xLu5V
	 7BIBz6/hKY2IsqYSBmyVcNeSpez7EYEZ8lGglgA5AoS7ECJ7USTrGTKZNP9E/fefAK
	 nTcMxA5sbC9cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D24B2C7EE26
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 14:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168485178584.25451.2694610455275417965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95c781e65b6e8e996a3fd272da2735a7823c7720d349168d33180fd76ca802c4
Date: Tue, 23 May 2023 14:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684851785
