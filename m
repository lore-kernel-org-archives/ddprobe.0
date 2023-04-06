Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CD73214
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 11:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A51C433D2
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 11:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680781025;
	bh=q/1qIZmhTRLcDm/VE9CZmJnOeSrIQpANnZTQjhumHo0=;
	h=To:Subject:From:Date:From;
	b=cRDng5iVrga+12GJOuunohWiHuMCETThKA5/OOgEMckq2vF0LA2Ef9qY0Jt9ts0db
	 5f/nzjxaju5ZqkAxrRy59otSoNl+gFinhjjOggXaCeBG90JAFrBZHCP7zJjJaxJEPu
	 8bC/cwRbXc4BcSSMm1eLoDeAUZVIg+91xj+EmfUqfBEyVxdH26K7VOXvyYXSssJB47
	 0OfoNpfHvzkSnGCzyk5nOpyqxSqTzqMmuNYdo0HOhe7DZ8Z8DNKCnxFk+a7R3gX7Eh
	 VdGliW7tZ7dJ3hz/4Yp9JCTXtH7SUMfs2kTGefo2thMw3SOvZTdIf+z478V+snbNq7
	 YvmQk2KyYS7Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A21C76196
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 11:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168078102574.2548.13478952126001423435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d02616e542cdbb27a0f3685285cad9ff0137733ce00c2aa39ab7b548677948ab
Date: Thu, 06 Apr 2023 11:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680781025
