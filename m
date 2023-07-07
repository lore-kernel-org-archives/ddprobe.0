Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD0217ACA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 22:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA680C433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 22:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688767628;
	bh=HozZo5YzbHRzjhfEHuS/mnlQ1fEh4FXQMspwoMW+nYY=;
	h=To:Subject:From:Date:From;
	b=YVVjkJSdufCPkwbjefw5j8xZ4h7SHeeRrfaYzI73KvRgYHU2vpYoXtX73vaC6iL9p
	 5uQrHjbwSDEg485NPPVxILnpMDJytquROXlwkY3N/1s6vIAq5YF0sutfpbwLyEcuVn
	 2I+UaDZ8+e4lJWDqF0Pif0PJOGQDRzstYslU0/APsuLPG9aNAqx6W8bcN3MimBMe1n
	 EPu7Dl+uteurAhlbQxlL+frrV5XFaPpp3F77l2KYAg+AIpJBS9spqwJVrZYPLWasuz
	 gVizaFiYnwJ8AFxNge1YRWmslpMWp4ola+qfAIWMLVhki0rHixhbVOxVLey3EUdh8i
	 a+VWklut8qzZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CFEEB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 22:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168876762878.6066.5098216570399960597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45a53a2c63ff384d8e741e4bf72d0ad214a61a40c7375bb5269273108e95c87
Date: Fri, 07 Jul 2023 22:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688767628
