Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEBB11EB57
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxGdCI95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD64C433C7
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700938096;
	bh=++IllJ1h1Dcjb0KDuXqMErzn0oxVBTtsb68XGb3c/A4=;
	h=To:Subject:From:Date:From;
	b=pxGdCI95n4NcAP30nF3PRE7GCsRi9O9gjdh1M0LLcDESZGWjPzbED6GTu9i9EaRke
	 dk+CpsLlJsCkSZOZWnqk9HxAJJxIpJ5Mhe5gFyLFnFG13UKTwyYxQ6i/W/MgQTUC46
	 xshTUoxdKRUhRt4+tSQdiZVxzh4SeAgBMybhGe+AQueD+ZqVCc8eHLHxZfQGwu+JgC
	 zaplMP9ebN6Ncj2hKMpE9Ys3WebmRvPYtA5L+Ba0KFy53HEp+WakfE7w6qXCrlGqC9
	 Pmb0WeMErhZzIgsE7Meoq/5VeLQXdUPcvYgXfnA7d43A2ad9opYSvMFH4ws/c+MCwT
	 dvKqZVQKgpvOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C7F5C4167B
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170093809637.23184.546691662263571948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca2116cc134d4cefa0b487cbacf504e710774d8b3cd961bf92d2d3ae041093b
Date: Sat, 25 Nov 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700938096
