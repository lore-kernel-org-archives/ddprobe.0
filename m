Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBAB14276
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 20:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7EBAC433C9
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 20:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688590628;
	bh=aI9CDibl96x0Q2Wk/Gsj878LdMFEGfXyieqkuOWUnPw=;
	h=To:Subject:From:Date:From;
	b=qMgvSsUpkGgL31gnd/cso+ubobGBByusb4AH+HxpeCyDh57q0acRvrDb8D+X0amtF
	 v0CWAQQTvxKZsqTAMQONha2HynKz/am5QhDsgLTKR7R+eioOz2lJiHNhcwB2gStxzb
	 rYxBtUjv8L26WRLeUdnDGJ3qgUYmxbnhskI3LP2k/TD+E9sVIIGVz6d7y9w+oPbVjz
	 INTsfb4+HlXR41fe9K+43hSGsgGimBoZ6j+ptblHdkLVlt31qsBjBJDOdgJq6AqJFB
	 motRsmi++SFOJbhvBVbKAtUe2bwq60zskGD8paabtqQ6/VNCNWL+zqbdz1RLDX7oHV
	 UH7oGn4pfgFsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB68EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 20:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168859062868.20552.1972866166539628926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3d3c2fbc7ef7573bcc57fa504b312a8cf95b76d5e8e811ba138caf5baaccd44
Date: Wed, 05 Jul 2023 20:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688590628
