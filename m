Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E2E18E1B
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 22:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED14C433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 22:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694818508;
	bh=xeyQTX5SE6LQq4ihRLtF8PflpF85X6ENgBEaAxF/TKc=;
	h=To:Subject:From:Date:From;
	b=PR31PPDh3WFBTW+7ckXf8vZutO9NJYqZUX5M6NGbNVmmXcE9zTr3wbxKgCXZXfXLP
	 aixLuuJejIH8tKFiSIzGvFvkYY2o2jWBUrAyrB4eepZB0zRnfwdLu3TRfg+5beXG1v
	 P5HqtSfTPKdzK4trJ/gSwHFh5weQFCJEPU88b+ky1jmyW+ZE/QL498aFdKWT0FPMda
	 GJF3sOJco2v+aXLpDwsir+Xz9yicoQljgUe1qaIp7IHT7hUsmGINouPLh50JHmf/ug
	 DCITBD7Ii84OqHZGz8SKzSHHEwwcc2q6Q6WUb8ym89zrCa8G2/qokL+lFV5iqy/dx5
	 LZIkSXxsnHa0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C06D7CD37AD
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 22:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169481850877.12809.5581847570589541490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4005aa996f6687f8b3d7b12d4c3607052eebc08655cb6c413d6038040aacb83e
Date: Fri, 15 Sep 2023 22:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694818508
