Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013EE2F4A
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DE8AC433D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668885054;
	bh=j6TJTPy41jI+rqVjKEH6nxXoPKSkKcBw0gDDO9Z4ivk=;
	h=To:Subject:From:Date:From;
	b=SzUA8VGOoYYgfd0MbiGCc3tS9KiZbwWHAysV4wyVQsV4lzHGT6/RJ8HBJBWuwJ9w9
	 /mwTKv4n9waOyJ6z5ITXeHr+UCKba4mqrYEtQ4dSBlLZgdl/5fJ3riWDaNCZkKWdcQ
	 jQTto6YAR3A19YxcKc9YfNosU4/BXjlxmz5kGMsa9rOowCug45I+NxViAVKXK6562f
	 GxZcFQ4QTsCSgNMCcvojpP2KgLQJG0swHGpSzrUUW8tbaFgi/TuFjmE3vU47zR1Im9
	 SyZ2uPIZboEKvxs1wCabqTdzyxlns/2MNXAWvQRfiejJcQ8a0UEphplTZkIsZCp9Hk
	 H64jRdBCFhCiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B95FC4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166888505438.19690.2628152408091136585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb41ed0754257113a60858b9392eb50c2da716d3b4b189676ea92136169e9143
Date: Sat, 19 Nov 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668885054
