Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C2315C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 02:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD2FC433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 02:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688178848;
	bh=4AZQNSrBDH3s4GZlI4F27zoo9iwGbGRyP9HkNuBj8wA=;
	h=To:Subject:From:Date:From;
	b=D3u9AJ/UhCpxiaXdS3FiQ9KFfYfwhxDr2vOUU/IT5VEFR6vrFYNzRjkTtEvWAdcwa
	 0y7NGppeH4XjZzjhQTDlFntUGMg5PyONGit8UYyIoGeobJywRMOxVuaUEfDVvKWfo7
	 AnNvBATS6GiXXnrwKeRzXbgzlt7ziWEslKacaMK2RiBJz3SxWHVMn8v98n0jsp4TDB
	 rbyhV5BknNK3jVLnDO9kVKDAHZyGBQbO4M7vnlCVfbGSTnSFlnOLx24B6nAS5fl1xC
	 PMzz7qSUonlHfoKvjPOcuoJBqBpFyDYBywJiQa6851FcodHz8XLBv9CpAOpS7E014t
	 KojPn3dXFnifQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85DDEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 02:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168817884866.9723.2174611315795844465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21aa656310fc973d923c933cd79ea2c704bb055cb7639877c99cec70d1977b95
Date: Sat, 01 Jul 2023 02:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688178848
