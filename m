Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C22AED5
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 00:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D547AC433EF
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 00:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684889645;
	bh=2zXbgGvW4D2oZ5yMYCEADqRbjBI3rIADcPGyCI/iBME=;
	h=To:Subject:From:Date:From;
	b=sNRolJWB+0lfP7+kONcDNBaazq2JgO9UnI4A0aTzF5zIQlJ34UtDGQqfUNWnnWe+T
	 6MYL0HvF3iFQmuLfdLxJuEkQW4IK/EZF4M/QjBaIHhQqoaJVP/xRrbN/Te9fv0wLrz
	 NHb40jBu6S2WO9EfX4LWcYimuYC/I7ZCGF9m2CxQfBASe+NYcD3O+e4NLQCnWRozXq
	 KlNN5lV8V0HsoS3SavKm7wf9GTnhfHUPxqNG4fGZL4Sh8txWCREHpLdpUx0qf370vp
	 OGedxqIjPTGTivXuav7BjkjKAfN2E1Ix2T56FLNXKCHviKfTtwU5Z1NfwaxfzoOyUs
	 ZPX9XEpGDq4AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E71C7EE23
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 00:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168488964574.10749.12438324973273063930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a528443d4bbab8fa57313e986218103f4eb413197d9af52c9309164205f25c84
Date: Wed, 24 May 2023 00:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684889645
