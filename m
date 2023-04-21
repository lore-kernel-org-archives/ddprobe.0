Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388BA37A
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 02:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA566C433D2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 02:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682044025;
	bh=lfO0dLfGMzdFTomWQP1ryO6T98tuXfU3ac2Kz7Ymtbg=;
	h=To:Subject:From:Date:From;
	b=rWnvGbld/oUN6yUW+urrwREgqPhiywBjudCqW+ER4qmZ1y1Qo2k8J+77+HYBKG2Z3
	 H3gl1/k8wXF/FcAAaBWXXdGGzL6Is4DI5klJxGe/bCLvIpJzjzC3kkUb8agc2dwswk
	 1QLigRnhvivI+5+cf0AjbCmAoKCl+dQQeqnLxxnGO6/dZxDW+UqjqI7QHV1giwGbaH
	 A2Kqml5AF4rbaV1mYy+eHRbvBeZRRNkr7LSkUkNhxGzuHTxsGkeZBXEsD0Emek8eq8
	 qwb+PGzKoSkQ5UTW5ExKur6R3aJb5KAcp7dYUC/u9rM4TJc0g7C7woOBj3zvrTR8Q+
	 cHkez8TWGhlHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12A3C7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 02:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168204402577.25654.8157888732930783612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b904922a1b76ceb4260f05f1f05265b5c6d8390fdb1897dc25a7a02da3dd7c
Date: Fri, 21 Apr 2023 02:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682044025
