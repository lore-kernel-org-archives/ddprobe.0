Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0148AA20
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9878FC433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673754687;
	bh=U3jB+nKlZHw4yaYWHYWLymVtqRrzN9rI3XKuwviiehs=;
	h=To:Subject:From:Date:From;
	b=QL4BFeZCJvuO/sdMbaDBVah9c7+mhLfd27vRbIPQR0keAL1tfxjThzZBA6jzObRkj
	 szH46VffFHH9LdAo+JeQqDGuFLe47erEVXTYq+RRn45DVC3gxn4CCw5zZ9B9A2sM91
	 gkAOM7G19+48eAfSli4UFAZLDdPoCD5L7qddu6cppjGyaS/nxfl+uHaxWqYhBnAYOi
	 pPIm8YAH5O2epYy32mYNGn2VA3bxjnyxwN/ZUTjy+lBcDB1FULoDpdUZ2fZjb2MgLv
	 epbvc5OJSDa5HtLfccr8695tvIdmo0t5sdAhZTmvY3AEHCTzMX6duQep4vcIRihV4F
	 OmAUhYHsjR1Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D4E3C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167375468747.13399.1668954979020756383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8789b7ec069e9ab38efcaeb9340ed921524be6221bf7e230dc337a7811451b0
Date: Sun, 15 Jan 2023 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673754687
