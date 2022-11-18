Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D965C20FD
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F923C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668752454;
	bh=blkXjjg7kBMRPEjXFRRrkBb8uWH0obzrk2JBVPfJpA4=;
	h=To:Subject:From:Date:From;
	b=AHhF5PHqdVgj6RMzoiFovo38k15sI91Xo2G7e0hbobSWJs9tTri0KW54JTM8IGSpA
	 RLa/OafiIHc2LuP7vv3h6BhYP79IW4DA5Pbp8RROjqYCb+JzeWbira6gb2jq8ZFPkp
	 k/uOP8V/7G5/NibeYBoB4iPjQ1NSQMZzF3gZgjcgE7SSqA9XfvCRHnoZDYbYMVZmWo
	 lmgTgyQsBNWXjCGD4/CcFwaO+wUfT6XaPdeTVvHoRUWJokWmnpWbF1Yk+QYfl1qN4p
	 eQLIMfc57PfxwGv+cio8boQCczzkG3ey1EoTxyggEIhWFJOgSdeSaC7lCzyenBpE88
	 rDhiveBf3+uSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56ED0C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166875245433.15801.680415315889097144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9264fdb2cc0589d88fe5f6a4b509771ede98f1489713a1892c9bf46b5bd8588f
Date: Fri, 18 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668752454
