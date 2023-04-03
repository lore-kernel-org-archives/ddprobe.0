Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37674362
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 06:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC14BC433D2
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 06:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680503765;
	bh=BZBLYCLyAFGZ3Q6bgCwl1wCAZpnmraG1vg7B3eoW/WQ=;
	h=To:Subject:From:Date:From;
	b=nGP6uliC/5mmAfvMobyCbMIKhq1zS1LhlA7UuQBY6y1kb3M0UB///nsm8OoOkE9j1
	 RusXg777gnAnhRT/qJpVCZ0m6LZV/VTt8qImhX9QNK1crv0e13Etiy7A3pKRt8FAcV
	 FwbOsWGaltm2Fk4EGtzujfN4tlpd/ieUEmBu2b1SCTZpdAN9tIVRnMypOTt+4DOEtI
	 8/m6i4U6qv/pF18mXdNlHctnsvMVMIq6EjzmlK8FSEASJllrl0J2DTvcc2cLqvo9xB
	 IFcQwYjzAdXVmUGkIoQ9pMegmyT4ZXQ9zO5QdOBv6HXu7GrsQrddREwW6e/E3t9TM9
	 z0TqnYlJ+DYWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6BBC761A6
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 06:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168050376577.25234.4537704310906767278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 153a99a8a8e64306fe63863af045457aea5a59e2ec47091e49407feb44dbfdf6
Date: Mon, 03 Apr 2023 06:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680503765
