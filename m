Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A07525D
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E32AC433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673323887;
	bh=eNwH+F3mib2rec6czNemiR1/m1rguLG+yjIJVqox29M=;
	h=To:Subject:From:Date:From;
	b=IrDdVGsSq+uSJnQ6KT/d0Rvt4p+hRblxxLpnr9ZBMTbnqKzo44Efwckb30TNaNJog
	 kw2LXFfL2MyUlHE7GeC0Q55aoYBzcTVnB63aq/0gtO0jzaheS1JLGM0bH2AyRzb3mk
	 UDuKlAJkl5B/ufr38K7J0dSJlTQ82cwxMyCD8LxCRzBfIO4HUaKBvxYofR3qg18PFB
	 rmgAalLdnlORmcOoJZI6ZkdBRhrOkRmtfkcc74R1tOmr16YjUY8VWGhKeHIi3xlMPw
	 7QQIMte8vV1tJzZelWuzVC8pEoQhBoL4aXS7DGuzi7xVLuxl/x11DO3xgFd9bSbOej
	 ZxBg1aJtWsSzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61934C46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167332388739.1227.5858010500962233066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ec2bc370a0b1900bde1b202ccb0d13a2545c2de1bebd14b452c22317da622a
Date: Tue, 10 Jan 2023 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673323887
