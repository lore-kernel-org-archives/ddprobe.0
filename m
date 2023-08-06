Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582273D63
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 17:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE457C433C8
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 17:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691342588;
	bh=yr1uy5kINCc2dkOnZacq0yTlMnHKBMcD0i5TZ4Q3Tqk=;
	h=To:Subject:From:Date:From;
	b=CBAu93TnPsJiVqr2JxQS/s+GFdU3/Q9hBalqGC/kXvAei/DF5Gj9ohmu0SYVP94Kt
	 ynXJth8vBiBzapFVm02ootHEqrCkdBO9/+nW/ke29aucjKjSq6BxeLHaTMMTRidDF2
	 QaPMF9cUsotaHRDDvPjWi3qdFcFLzMNZQRf+LhOL9pd59X42mEDWKvFd2m8/OC1wux
	 POgrAb4ADDqUsWbHlymAQTKWlIYbj8IbYfUmA6ZfkUfTi5VeRc2n2xLL7qYdvtRDxi
	 7RNZD4GwMEYk8iRqgf2NM3oCam34/GyoTj9ywyPygaGkeGHTHlM4qIqYntCuPJdInE
	 ISKVXPlhPve9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E14C0015E
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 17:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169134258868.9573.2618034159975825435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e22d77624bbc047386350e7f4fd5f39b4b2602d6a12f642f184fe51b5acb9fce
Date: Sun, 06 Aug 2023 17:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691342588
