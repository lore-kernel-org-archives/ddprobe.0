Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD1717D7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99403C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672662687;
	bh=t67ewUHnW+5M2ddaSpm1WlevIhbR6g66l1ek4vyVFlg=;
	h=To:Subject:From:Date:From;
	b=UAu5Hec1akza5RvXscHp3bFmumWPCTBdP2AbECaNtiy8KFcC/+2JBfwrdcPt+WPyC
	 mnNfI8T84Nmvgh4GXvjgIFSgzvSqA5xgEPTFfdH8Wht0iQ7r57rQjhlkr0PIVJ2/M3
	 liAHqeW8F5aWPge0wIHCOOl5lakgPiWlpGM0EjQWiDsb+LtiOqdMdM2CExjR1dJcI+
	 hJaBYzfHgS2qfaQsyCDBGwjnTA/zoKuA2cFVUI02SaP7JlXxAPLF6e2uZ1FTSoPtUS
	 oJfa4GxkCv1ry0GGAv6+2v5+wWTwCzHtws9VwV4mTulg+fBXyJA/ODTusyFKCTZxCa
	 +zv0K6fg5icwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77316C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167266268745.5967.13764668278463612905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2ccef291261b44854a09269fc20a5bdd4122de2ea3c471961a816213a66ad61
Date: Mon, 02 Jan 2023 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672662687
