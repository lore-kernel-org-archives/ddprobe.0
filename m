Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D669D7EF
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81507C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668939654;
	bh=QnyPDI8XTnTpcaiKX51oq9MVJTjg4MCN0Q9rVSEXTE0=;
	h=To:Subject:From:Date:From;
	b=jBT/fUBKKZ6RI9PIJ1KEkaU8M7ApmNxIWC3eTOYa5C45DMoGDhjuuLcC7+DRwVIZm
	 hpTaUzU1Ueoq0TczGTLniAqn/bFpNI1k4idIx/MFNBsmrknBs8H5cemR44dAq3QJwD
	 lJY3EHoq54jQQ6OTg8i2FGebkUOhZkWJNDWBb9XQWw9hm3k0H50XoWQ3rqT4sb+vR/
	 60Jqq2oPTn/Rwh6Yqc193fGMIs9ZhKYhok0Qi7Uf9VbfG0rZwcL5/qCnHqletf40we
	 i8YjWGvT39z84rLpYpoxF28VuFcV/vsQLYV5cG/Gc7k1/bkTZyiMdljljcMT2pvCfx
	 Z0V1ySddAAnxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D57C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166893965439.23553.5257110615576679669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 272cfab6558736bbad5543b4c642e50b987c564838f10f5141da14c2ab9a9b6b
Date: Sun, 20 Nov 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668939654
