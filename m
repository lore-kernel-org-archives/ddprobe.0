Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC9755380
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 771E2C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665183653;
	bh=NvwVyKZS6c+9mX03mUhMT7olpvZXm3Ai3knJBRBMwlU=;
	h=To:Subject:From:Date:From;
	b=H2tKxXotRI1XZfgAHcaB0C5YpSbVcwnel2sB985AMemelyVGwvZ7ofiVddQWbgjJc
	 HsFhii1N27kcwl/IZ07GltvKxKPmcEzFcevfVAw0ybxjDaUNEvyvOtLG3bxC0KwI3a
	 fnvVLmceEcOJhICz85wvVP/V517xgxYm1N2YbgVgcZKPzdcrF4+AZSXLNzTsfvsrxy
	 r/m2J5YEhmyV/wVSenynfdJBDtlqPpb4JEBqx9YcO5B+7B7AiN2zoiJ70uZBz0TPYr
	 5GSbhjap8UlFsj5Y8IzShhzcrLijgQThz7B7kqOf9FEYMBeaKLWNkQPyFguwQpOTKc
	 R6zwzQ7rT+WSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A27DC433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166518365333.10187.14051254265293085453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9cfd702298e79f1e43c4cfe2613b4025d603b88f49e218ad010f101507f8b4
Date: Fri, 07 Oct 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665183653
