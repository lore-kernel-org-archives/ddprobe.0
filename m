Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 860DA6ABC
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 16:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1628C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 16:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694361848;
	bh=xRSQItu6p9vyF6dSoId+agcxHH8rYlTdNgLiqkPhQPQ=;
	h=To:Subject:From:Date:From;
	b=pXH6mOsfO3NU4Thlvljhm46HkFHVgtDrDuGoCTYRee7HKbD+/pVV7kWHY0D84W3xM
	 o08wJpY3JFkYWXDlpoaedXO55hBTYjtkRr9C6R0IkEOkBeykTz/0A6i4NV3TQCCThn
	 6cWKb4RZtlM/tbrsPMZPKBIkDVzXk8FrI6sP/Hbx3NCErfDTmBT/t86+NNvcsmumgU
	 m89DE6DyZedIOVecFS8GPgi0g3SdttwnFwzBsXsQ0VuQO2UF8JbEDNYZd4OvlHJDhN
	 c38C5oJKnJj1WUF+ZnaFgPVOVncIlcyyw3kilS4ipiSvVjSydaum8pErSiVNWxKZi1
	 Do6Bql8cZuIvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56CDEE57DF
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 16:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169436184868.5364.15036237694751561558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940b670cac3fa59b4e9e8cd4e9378f3532e681cdbdb0fe8f8883ab983257fe1d
Date: Sun, 10 Sep 2023 16:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694361848
