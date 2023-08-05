Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574B11FA0
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 15:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A35C433C7
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 15:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691247788;
	bh=8Evavm7M6JDOUStmZ1Hbm3aR7kMSri9ykjbYRZpx5Ec=;
	h=To:Subject:From:Date:From;
	b=D8fZcp6BIMzCH0/j+86BTDGjkFoqAguI65rQ1x+WIPX/35x7f6fk2wyMlRIHkLKde
	 vE/nCAQBN9AR8KH9NL9TTacDJ/5bVPneOm3+jR5mF8jOCc+n/rK98e2dt6f18PlUX0
	 goA/xOvK4mm8qc2sjPfeS0UIj+PT+MbmRpvGgqhGfCvcQTKnyDbr999r5GI+TATJsa
	 MdqNOxq2aKrfFRWQtHpjgflo/dW2MRo82uKCCHz9p7bchqyJtqx7vNwc68rXpKboPX
	 CyiA862VaLme6oixk3x9DaDPRVoO/OOS8q6NCh3K4rO68kb/via6dq10RydTVus2lf
	 6B3VxzGsQLZEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC15C001DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 15:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169124778869.13574.3137152687486240982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17e013390f55072faf9e30b24f18bb12b3c0b69ec077a2a08c515bc9b20d9f18
Date: Sat, 05 Aug 2023 15:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691247788
