Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D765CB4
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7C2C433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667821254;
	bh=ZhLulmwXn7tPj6QzeIqr0hTPCYKBcaPeCQ2qHc0Xn4M=;
	h=To:Subject:From:Date:From;
	b=uNUbCaGccGPL0qf7KENq4HFJ2f8vNxXvHYkq1NIoqTouab33ChP/hmtIPx9fUVhlp
	 +RjXkjQ6gjIawVp/08BHR+9o/pE/e/rGd4dnArVAVoXiOoplhzI/tUcD8mhG07np5C
	 u5UZP3Y5VSnk+Dfa5UBUa87oAsnun4xzOSi7Dv7kSuNYHQPN2XgOUT+UkHwpufWKwa
	 8aUGRxHKqtklOlWRgjQZ63mumtbXgvLsBUgzP4Zhn9pk/e6hlae0C7TonHfO282EDM
	 vzU13Hu4xy9on/lS8rO9PHZH1C7dkOk6IklCBS4etyHwK7DZCDbZiUPprdi2D++8VA
	 fn0l1elYG7xng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65D54C433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166782125439.31664.10826060368076525476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8efdc7d4e74a51f58bad39cd1d29d48b0e073948bdce0eb3e67e0b4bee0e1e12
Date: Mon, 07 Nov 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667821254
