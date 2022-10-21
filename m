Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC7A17D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F2F3C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666329653;
	bh=0FURplH8zZOn6hw0GZIbp1PFaz8uLXcyG9AXgYWGBTE=;
	h=To:Subject:From:Date:From;
	b=XW9j2NTpeabIOO2TkTWYiWe5s1NViNVwJJgCYlz8B6F1xIoyAFsQJbT6iyuZN+rM5
	 0M1j2hgwOHrNpBjd83m4EEXFsmn5K0SQu0llGwrDexcecxDbGNVNWZcavncAJdOV5K
	 rz5jmi2mujIrl+xF3YYvumKCAVhO2jeWn7baxxvE8v7tW0x1AK6rouoxAWbp8m8Nz4
	 iXepRY8z/v63vLMB8jB6d0zed8Rozz5XcM7l/RxXeZXGHpmidnpYypzLMs1RHZT7Vr
	 pH0Rn5+g+9oGLUeXOU+BgfDL0XeKguTK2uFyJiJsLOyNSNTzdMn25muWxsMSspF8O0
	 655kzpRLoxA7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB3FC433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166632965331.30154.14633175401526739170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a9ee71f0f58a025ea307f1f4005f3caf4af0fcd0d283100a66fbe49ef548f4
Date: Fri, 21 Oct 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666329653
