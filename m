Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B86305A88
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68621C43470
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664568653;
	bh=u4IaaXVNJpLIzpubCpY/eUfdANZYOtF//eaBKyPzKMU=;
	h=To:Subject:From:Date:From;
	b=Hodgb5/Lj3+nbaWUD8CXqVeO+FFFY0dAeYQTi/PN366ptP2Cs9/jJf4hxre17JB1B
	 NUOGtpCzF2plEiWIhKVq/Z+GXvaA10YXY1YWFkITmgw6mmSIczrqTpbYMxY6BcWmYT
	 usM7UyQFAUC0HkTBA0gncnACki0fZ+8FI5+y9uK9YWcvt24/wKvw+NE/4UEFJz9Cdx
	 rZbbDeL38FKzVOdjdWVXzJ64/2J73VJlu6uRlissV0+R/6EbElXlWbPL9E/tGtlp0P
	 w2i1fUoxkot80Gv8TIlx/YNFgo9zrf8Lxmzi21rp+RhRCPETrOgSO/47Pp6oBvGmxm
	 CIbHkyYrvLA5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51FEAC433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166456865332.23864.10478307232786087742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec41a2d2a3f9959e7c8c99c3aa76c0f1bc4a95c185c108de9f6e612216ed6d7
Date: Fri, 30 Sep 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664568653
