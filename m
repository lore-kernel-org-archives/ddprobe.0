Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1F26712
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F0B9C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663349453;
	bh=GhSCBSdJE/adHFbJeZRvKO3PaFd/tzx9Ndqn7YtkGek=;
	h=To:Subject:From:Date:From;
	b=Jm8VIY8EI6NLkyl7WdnVi/m5SWVQVVmJ2gK4BOSJ1RqpNTNgyTVXwKh+9na41oPqi
	 79H5idDlAiUrXwOoagC65j4gE7ng+SFTJmBSmAo/l37SvL+Vmatla9xsCwFLlRuM0C
	 WhaEnSUMOjOkfgWFsjGpKZq0p/Fa6Nc9VADXx0a8XF6i9vyP0Ljk/ayEvxBtFmuzdz
	 DhX8iIJMxnoJjVFdCwMlnUVkxn/k9dRWgJR1H/g7S4jo/SWBt+suS8QyCxJjfJQtqg
	 TZhfkSmUO+Bd/KBKIKS+40Wlv5j+NkHYwO6Ql6kfNvxfhz0ljcNA5RPir/OrRMFSbh
	 59Sx06Hh0NjMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F482ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166334945331.1311.7609852758556648087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 969ac3a9e9df364f2cec888b7865ea632e1bf84084c1910053095d189a3feca4
Date: Fri, 16 Sep 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663349453
