Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418F58F65
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 16:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA289C433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 16:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688662028;
	bh=Tb5JTQ4JEh1HKPEPMurryPplUfPkUxvuJhA0DYbhL4U=;
	h=To:Subject:From:Date:From;
	b=O/HB3lJAlMzw96O0f228QrcvJgAS9eRZwOVI8dcnPZ2RHI23D08oY3/Yjm3IZd2CC
	 R2YDpJH5v2CXPg67H/G05xcGIjOjp/pfA9xj5k9DdndeSbxk+AQ1xTm/KjVQ2Fj2Xu
	 tkjkM/yP/+fF6f6KgYRhpSypy97WB/iadW/QGhJxPN/lJLatWeglhhvt1LQfIhxYXN
	 Y4HoI5nBcDnw872TggZGDLfKy15TPRYEVSyIj7oraufvkk7jaI04JbwI9loKyxQM/8
	 0pNrfSKVqK09bltbJqyOWwM5DvfKsmE3UPOY2dwU0AFFbQcraCt6OYCyp/wPKtIKN8
	 mOji+fyetwA0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C7CEB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 16:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168866202866.30321.1662341363760937010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a59c31ccae700f58028459733b22a0265fd9376b1262ae8c609e94a7b75f45aa
Date: Thu, 06 Jul 2023 16:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688662028
