Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2AA0EA0
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 793D4C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662081653;
	bh=JtB70weve2Sw0tQ6afM7k8gbt2VkOFOMkkzPpheJvtA=;
	h=To:Subject:From:Date:From;
	b=qUBcZQ29P4OxTuZsF7ss3MV7wUbN2KYdCzN4IuC427eFp58jvATHuHEs+EAYcXi2M
	 SqSKRL935jJxUQjNyGYsRdkcuxVkcPfljCc5z/pUkMLoR2tcyV7mhKxqEb4LepCxsF
	 xOlzxkI7VSqdXfuXDuf2+Z6/opUgKOc5pizjC8odzNusEectK8CNU8eNwkYPZn/1cs
	 GTF1lgUZMhvOlT3qOYBByHK7BEr+EwNFZeuBnffJx156S1cVTrrcNAcQZ/j4TBLXeJ
	 ffR4HEVaac8uc8l6f9QsfEjdSJXi0ylEbHqNLJZzr9G5qa3+IvL0VvIIm3kyhwN9SG
	 9m2D1Vji1VCkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59506ECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166208165335.26182.10028513881609720552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a008fb51145bb3a011d7da621249f911f226695f10e93f2359e9a5f8fbe198a3
Date: Fri, 02 Sep 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662081653
