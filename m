Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65365408D0
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 22:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E46CFC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 22:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686350885;
	bh=+BXsoQpSCYtivup8UqEejw2F9hvPf8cAQqPJdX0oBuc=;
	h=To:Subject:From:Date:From;
	b=MO11uJ4iEUU1JE+vkbhfz5LlkWn9LPsL08HmWKALB1XRdFb/lehP0ugD6qP8Uo0VN
	 IZtWtmMSe+zzk5A9s559OAQbxmSzYIc4MTA8cT6tg+WC6RDUWhpO0bcM3v0SmJfzxT
	 rQJsWBt0hYl8XNfvJeyntv3peCqa53oGazgkJJLJiyDnyXgz6Kea9E1tAMgqKbFr8w
	 Kpwo08+ZcUWoeBe/8KjfQcMGxCnK2vrMEU63lljldsXKi+ygZTcAZah1CjdTaIjiGS
	 v+FqQiJag/zk2zPsj/PRs3pJXem+fdI24IUaXmVYALdNZt3puPvSy0Wxa1FSVRhLNt
	 +CX5SvUIG+h9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB0CCC7EE25
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 22:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168635088582.31253.5402827026178092215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c933fbbd0b34d680d937ecf1a6d8a0845da56c5f7b6e59e3e00d7a4d2536c8
Date: Fri, 09 Jun 2023 22:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686350885
