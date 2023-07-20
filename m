Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F7537981
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 18:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4012C433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 18:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689877928;
	bh=bJs2DUr/7ca9U/Wy5UC/df41okmKRGNo33odB484TXE=;
	h=To:Subject:From:Date:From;
	b=XjARbV2AcF595QaKh3h0gIbRlKMUcdwpvBAVWZqR14uXU1uXLtVBj6FkmN2yjty1L
	 M0Xs9XoXE9t9cN4sTbKuNhD+tJB0Iq0MqJMuTf37u+fOuy0Gdd4uquZBfyZWy3q6iD
	 Ag7TiSGZyHpSk1wP+eyg8vF7ja/xmBlK77P3wYeUcaRrCi74DUAzNjbz5hROILsS1o
	 zzC+0A1tRBwaiiv+58Vc71TtPN7+XJSptxGKyUqzKVEDZi0uwlUymuLp5T7Oi6fZy2
	 peF7n6nwS+q2Cuau7JQbQ3EDdC0UQMpudGGEmgdXwoBC1Zex4yn9HBU+Wng/6thZIt
	 gHHAbccZO1qLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2DB6EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 18:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168987792878.23582.15952515854311489240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2f3f084e4d3b755e74b89ab40c46b074716ae162bb0a3b118477e2d976a5e2
Date: Thu, 20 Jul 2023 18:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689877928
