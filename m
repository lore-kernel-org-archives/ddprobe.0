Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84222EC5
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 04:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22CBC433C8
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 04:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693283048;
	bh=YDz7eezJSUwDHwP2uG/bERi0M0WOeTj2y1dPeOnZXhA=;
	h=To:Subject:From:Date:From;
	b=hgg3Fokwp3jaCgAFLEW7nsc3qHrIhMBjZhmsRmr/C7xI2O0nA3OlZOvQ6f5d3/i+h
	 rXtNPMNAM/mLIFrajj/8qlKIsK+ysRa7D5qY/Cw8g2rZt8XpemdrOV/bNVmcRcTuHw
	 rT3v63kBJeDlteug+vooOTd4waeVP4ZU3f19H+fcwyZDsBzvC4XDfUIc2FnWeqjt2+
	 HOWewe7NCJbZuiiMurzjPr8JJGeCLsK+lu9mk7w28d0w0FCIqEE/h56dwQjsvoVVOU
	 MGMMgxPcarrsTAMJSfiYVeCmc09geeowBY9Z9AU65Yk9CggW5ti82loSULTnYAUIN5
	 jrf9yMcJIJ47g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7B5C6FA8F
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 04:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169328304867.13539.457622025120144988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 670acd6a9c536bf3c233215c7c6aa3a4438099db3098928b72636d0a9eefa90b
Date: Tue, 29 Aug 2023 04:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693283048
