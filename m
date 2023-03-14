Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391F72565
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 07:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B3BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 07:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678780685;
	bh=lXtD7gvDK/CA3ceEnxn2VPUKrMmMtiF1MWNzQX/AJ+Y=;
	h=To:Subject:From:Date:From;
	b=FGXZKRXZUapgjBqoHKl6n9hWudGyVNOYlSKChgdtk47WCPwwSbFhkZIBtn1N17RnV
	 1skuNOoF0zOz/UmtSf+1/PxzWhkFNcfmL18qkj922LPq20iwhnoOfXueuFjlQdfkw8
	 c9TftFANXO5As5DHNsZC8XGdW3do0qZpeipfb5M/mCooiWj6lxaOF4INDIlsQtleyj
	 1fNPzl7+KwR64MysAPnGEBfYafDqd/1KS0dBMqL8YHKmZTeonm6VBvCH2LUFC+QIvc
	 XFcPIlJx+7hJh2PEmsWl1EiUx1NAGMjU20kecyj3jQAc8ILzc5AvZy/9ORidN+gd2g
	 4qVc33rj+gUGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB90FC6FD1C
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 07:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167878068575.23052.10448321952654594381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a3e37895e6607220d932999311883e100bc71fcf0871ec1776cd0fad05c1676
Date: Tue, 14 Mar 2023 07:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678780685
