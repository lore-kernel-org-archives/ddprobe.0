Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C529AA49D
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74853C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671826287;
	bh=guw8qV36w6vuiybS5A9cdzmy8G94RN699KXTuCLQVtY=;
	h=To:Subject:From:Date:From;
	b=eGXgHqbin59blw8g1isTxKmtj+gziksalqlgHDNg3PAIMwlnUotuyQ+8IZ5/hzDO+
	 tJMPWCzRqtXb4du5+IBkNN4ESPEhA7P0gQfdwr8duIDRaIjbdiOp2zS3siUl+1SMcw
	 /80wtrs4MR/MuucoHa3dOkGFLej5ErSuwHcT4cmAOdI4711hAEFHnAZdjnvXtibQW/
	 Qkj72Z+EB8iEI7Zk7bVFwnVeQX3UaMxgA1skRHC7TQe9jy63P1Ywjv/ieSpWBzaKrd
	 JbKxs7JNGVOZq2/BzHElijB1VgGqoRlNwJ3iG+jUE1dBVtwkFJiZ3s2SymS++U722f
	 kEnQx/pjBNxDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E082C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167182628737.7391.4116544423016679215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a86b75b7d0a31c36e6dfc2e89be489c8b7318cea12a3771ed89c01ee801259
Date: Fri, 23 Dec 2022 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671826287
