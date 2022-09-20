Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B81DE1C34
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E57EC433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663681253;
	bh=6Hz1TWK3KO4y9RmlZEh9EcCs9RgQkukvob/fIYtWzDk=;
	h=To:Subject:From:Date:From;
	b=Hbibk2hxke/rshCuszwqG7KFxefsCYUX9u388G5PSqxxQny1GQCBi1xQ8u9n6zU+7
	 zeltAVxcMJ7uWhq2QWokVhYgjQhBFqw4TPw17LKNiDMw7ETDiORsJjGtJfcW3onLcy
	 mmRPUoIGdVJVCrpXOLxaY9eprgSAW7I63c7pfnh4qUH8kZDLTJB5UEMl8Z2LhsGZ9j
	 gk60JBJ4Oa1wvn5jeuhOyTO7jhFQKSSlvbBxdciGrHyVNRfaxY5RzG3v+vYXuVrQAH
	 3hr4TzbiuGfRXu50TyUivbC4E8oUHkacU0ewTYY6eLrlmozVdz7lo+ANw9lYVfYLWT
	 rl0kQnOuxNZIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55792C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166368125334.17978.16277161388527371407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9207ea0d02ae695f62ec29ff69585cc81291ea486107e82dc2cca504e90a526f
Date: Tue, 20 Sep 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663681253
