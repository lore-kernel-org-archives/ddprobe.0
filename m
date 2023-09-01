Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3B6A4E
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 14:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1B5C433C8
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 14:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693578848;
	bh=kC1CklYMU2NJzCr50FkyNGNRCXbI+9c+JD9IgUc8jIM=;
	h=To:Subject:From:Date:From;
	b=Wt0ey6jWyAFh7/mxtixy2l/PHOlMAwT7GXf2W6vkW18rtsMP/aWAxXB7837/s8p4a
	 yEEYZy1YdxxxgJuET6jh9AQhRh9/+2hU4AG5DYEXlOn58VzbrgTOGFnojOvTIZvWi6
	 rBBNfQrQxL4wSMnevhpHuE9WQkzQaKK89iGFxk7C5j8CmtO11RmPg01EJ6IZzM+WiN
	 ZP5MBs2rnjhjyXp96SKjPuNCQhX48Qk5KzOssp6b+7k/AA+CySvdqPFeGvROCAXhbc
	 uEQSxuiaLR9kbtdP5yxi3nZ9RMpjhgsyueMDfUCLE5cdeNOAbaBzyxRv+C9pyGQlF9
	 2S6vZOzSVs0lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE90CA0FE1
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 14:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169357884869.19615.13638068983034785207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7335c98c47dfb76947f35b8f61014d7555fac6abcbbb907d74abbf0bc4d33986
Date: Fri, 01 Sep 2023 14:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693578848
