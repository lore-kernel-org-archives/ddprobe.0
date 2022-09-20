Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE337462
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DFD7C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663687253;
	bh=G5vZWjk6LTIZbaWjVyEkH+t9U7tTKCTmxv/nJpaoJrI=;
	h=To:Subject:From:Date:From;
	b=LV/CNpZLX5HPWyvCxXzB30T31MeZVyG8cZjwIIUxjBV1zh9fcyCdO48L0ti1mckRd
	 DQCANz7C4p+gNfkfvKJ2gwSbwGyCfNoRPDg5h2BW0uRcA5sW0mcZujW+ULiSBLXEpe
	 lQsyCGBA+E//5lH7onoclKdre2P04FhEBI0RaEI6rpixFm7eacQ+j+m50Hws3RDPr9
	 fs06Aatw6qhI/mmOgkHGCPdibi3URWwpirt6D49TikMfL5NOzHqJzKGAnZEnoNX+h5
	 RHR4xWUqLqCiHVsrhKWAYG1UevioadQLt08izatgUcQvG2un4o8Rmvxw1NOmZp6ttg
	 EpK6NBFqZbZxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D99C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166368725334.632.1001336945790457684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa722e945196c9bac774a27b1471fda6ef365214da39cf6d6f60bb92835c1558
Date: Tue, 20 Sep 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663687253
