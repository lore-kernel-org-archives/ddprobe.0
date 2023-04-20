Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E19A8F44
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 18:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA329C433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 18:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682014625;
	bh=CcRsHxXFafsmklc44I9BKiuJKjoiUxvMf55N5XQh3q0=;
	h=To:Subject:From:Date:From;
	b=bbK/whHXNHKzjf+0yfydYfGZUoZ0sSliaCBkR2R/DJBMMnOIK2eJRdqfLg8IZPy5/
	 Eh2SdylI2UwT0XJBBkLVni6o1KrLlcWR2XFQhrMAXbj31/oS4Il22DOXvCsenBUWy+
	 4x8rb7cB0ZgJir37Xy5/Z8xekXwsTMSadTBDXkM+4Fg9KnP3F5GRN474n3iW9ZDZnK
	 LwR4BqwLGy74IlzDPR4xla7W+Bxibl7733ZkBStzbSEagc0fDubp+vzCuQwbAA85y2
	 CgF0POBTQaKCydrvMUht26AD2kJqCUqLEwWZT8OCVsw7L3TtWUYR9mzADEIaEwnX8l
	 YA9of6JmLsZig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CDDC77B72
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 18:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168201462574.22406.17049473663297746323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e05a08f2908a2e2b27e8319818e9fb73c9a18e629f07e114c9b7b8121be0b6e
Date: Thu, 20 Apr 2023 18:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682014625
