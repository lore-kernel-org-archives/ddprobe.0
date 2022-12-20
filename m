Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54C17E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E3FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671532887;
	bh=S8Wwdcv8rkXETbRc7dizRUF5mcltYNjtbTF/mZfbD2U=;
	h=To:Subject:From:Date:From;
	b=mUvo3yCQqXn7OvqOBCIOGoTaAehDDF3ZPltrHMnF9yJAJAnA4mtwP3zGnZziBfNw/
	 tS9J/AZCNJI1zXuN6BU9EowzefNsfprfeVUbp799QuwB3lIi5OJoKSZnVUso5+KNVa
	 DbqWvLic/35vGmgEMQPbM/NZRTvD2GU9OAixVJEpGlrAWxe4C/et7WiSqJmSWTlhlS
	 V5y+eATNpkqfIiVPC/dxNNJt6afugaGG9xvjsHAObSO4GikmcXSpDdYJlQWm4Q8Yka
	 U+wBZFVbekNLeNpQkJmw6Qn68yjH0HDiI5n1mfX5q44B6O5DILMq2KzVxVIuij1tgK
	 mhST81bQsfPTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DD05C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167153288737.24298.3630202082991285868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf29f9e1ae47bd920fe8f352f46942a1bf5ad62540f82385af0ac2dec0b7b75
Date: Tue, 20 Dec 2022 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671532887
