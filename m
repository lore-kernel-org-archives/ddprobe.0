Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCFACA38
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94A0DC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672908087;
	bh=ARbrGgQfonD6jrevh7cfAxU3fOi6DmjxXu9xnTrWZbU=;
	h=To:Subject:From:Date:From;
	b=ck99iGS0udn4omWshGHCxI6GqUER4cs/7iYuMAKkAeNrv1N5OavjkiUxUDSNtW/ty
	 nxaAlvTXnhuIAi/++yzwFLyOwsHz33yNSQZzHAK58iVL3syZtysV48ZkTKl4OLDWma
	 8mV0lWtCPdEZzwbOkxMUMpaj5aN5vyUTEto6H+ab8WdKvuBwAzyLHGlRIHp+ajEx9w
	 R+2L8O40FFZiuNeVJ7dtQhysJYCM2wRZBjPgeW9I47Ajq0+Ybs4g4VYd90+pqwc+Ay
	 2GIU//QPP/vMvdNXQslxHJcF8SRSE+6QBPMGnzixcKDMWx6qHusBCO+kd1nTAHytDf
	 /c93j21sva5pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F8FDC3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167290808744.4132.6888963618991685685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7897cc5b767207ed2bbda4ff02ae682d907f139a5f63e83856853c1e8902ca35
Date: Thu, 05 Jan 2023 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672908087
