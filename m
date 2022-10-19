Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEDBE53A3
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72FE8C433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666209653;
	bh=QFAzE1cdzeyi+hCkBqGMl3fXIfbgDRMQJCyw1q4p8u8=;
	h=To:Subject:From:Date:From;
	b=Ox8XV5zKPLjxYCocVSTP21HqsQ+az7C2GoAFwBHYsoIcanRstuwKZ6PluaM4Wj60C
	 MJgrOHev6ONvPG6hKyRB21xZtqOo+qEv7APdgGxGISWjpViKA6PZKW7rGQe6yfdDg4
	 bNlSo9U0u3jaTVKM0SlUxX6E9H+bK0jOQ88JC1FS4ujieDVwdK9jbXAnqRuuq6kNFs
	 AuZ4Xt6+jEkz3lWIhHIf3r/L+W1xwztLxwfY5pR+7Qdnm9I2uoceMa6i21yLdfAqiv
	 JSTzN844jrn+YM1R7HGhf7U7njUhJZ70Cg0jNeY5n9toeQTukq1CoKCXcnJLVl4yJQ
	 m9LnRD+eanNrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57592C433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166620965334.25608.16011559134537832213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3a90ec71bbfd1f8cb49d41498dcf6695da2ac16b6d70065588a5b04c00d81eb
Date: Wed, 19 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666209653
