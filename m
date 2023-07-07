Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441A87F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 01:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97A0C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 01:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688695028;
	bh=qG95Gb1xzQREjsJWmdu/wH+fiuSpuQx9Cl90wGBNFXE=;
	h=To:Subject:From:Date:From;
	b=oS0YgOkmlReV+b3TvXqt5/lSnKt2mMGTC9oYgYhvYKkITYZvYCZEfLkfRawZ/peIC
	 zCy5vIYZdKEcXd+vaut8QMi501YkohOQh5V2KDh/f+G2GRDvoedMgSr0vjRxisb/5t
	 Nsu4I6wy6JGknTOn1Kg0yq/Uoi1oP9ob5ilARvU3cO6ZnurKL81mb85zFO7g9+INPT
	 fwZBNrOzXnm6PACPwcOk2zAJiaq9d5t9RBMqI2/NoNts90gp6D0Kzc6s+YX4ognzmU
	 saAfx4W46KLiMHeVJ8z7Nso2CTPbwdBQu8GJ1xLgodVryEFGLzD8TwyHm2qcWN+YXo
	 tnwHy4v97uZPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC9E0EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 01:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168869502876.16683.16882584174320949877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 316ebd0a86b35bad091da9f35c3d530a54ae3598675afd13a43986a2cf634f85
Date: Fri, 07 Jul 2023 01:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688695028
