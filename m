Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A681156DE
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 16:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD050C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 16:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689352268;
	bh=MAOTLfoWSYY7xT7+nFG9V1LBltwfOci1oaehw5ZbDPY=;
	h=To:Subject:From:Date:From;
	b=IULCFtUXh4CpCqOnaoCEhd5eUibfWT2u2ISA82AmGd7lu42KN8y961hIiDvqYjKRm
	 rZv6oC3RfoFvJjCoCzVP5KS/gv3ddfvf+0oi9Ssg6Bx08THZePiV9G9Vl574KAYPzm
	 KpOMvvJ9tmYl7xzvNOwdoo13nyr7c5LlgY68I2eV0YQvDO5VE3t6/1jvOU1qGQlXDK
	 WNcmq1oQjxmAYCYeavjET67/EXfT9IIpBdc3w3vjBhd2IjwKr3I33olmhotPh0X2pW
	 et3f6rSMhYEkapB5EyjbXEIyzgddf+KsqUwK4Jvcv/LqrstROpFGWHjsFGhtS2xpFq
	 BeJvQxPHMf3RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA6E8EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 16:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168935226875.22081.18428788216848638798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 978eeab54de7006c82501692d4c078d1d7f23569cf274698fed0dc6c71efd79e
Date: Fri, 14 Jul 2023 16:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689352268
