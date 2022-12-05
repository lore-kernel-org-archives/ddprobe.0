Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B857B7C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DE4FC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670250054;
	bh=EFSffUXCYeSxeCDAGjDmHfOC6pZw1TCGKaf5gyiwOmo=;
	h=To:Subject:From:Date:From;
	b=n81ZQsCimen9m/mXlWa4cFjajQsZfktLYPNYxEb4OCjX7cKzEIRB2tYBTI1f9KKt0
	 4Bud44KA5BioJ2S9KJDmO2TCO4J4bU9iVvkqkNxnDi+qxR/Ol2hQ/HeFk/3nx2oNRm
	 9dg//aqDuJ/16qSsE2FrSXZy6oXcGsmdE1wFW79EvycLpw9aYqZ5A056v1ma4/7SdX
	 iLoCfnD4wgYjRcRs1V9Amp5NTXwPOObfOpqILHXLXlWtjotfyqULSmeW9gvYfY6b81
	 aqenDqk+UulQQZpuXDRC+crtVzyh7CsjDLlCqsMDUshd35UQowiBs+eAkTUQ38Ahog
	 8Ajknjdhqr7WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561A1C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167025005434.20350.3597561225179580556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cc0212d401c67a670b1b981f7d547e10f92348ce6f8853b955152d6304704c2
Date: Mon, 05 Dec 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670250054
