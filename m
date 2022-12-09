Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BF46FAB
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A24C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670616087;
	bh=JlLzJpcjH73c4kf5Ypyx4ISseZHzyhSls1gYoDfEtdE=;
	h=To:Subject:From:Date:From;
	b=imTKrLIRDnb5aP7BfHI3suhOdiqSU2C/VQwW3QjYrb34szjiS1UWAO1QXwE1Eitpw
	 eABUvxE6n3OSw4VKXo7rSSCUSMK4saFbp+0LmYXyF4N9VSLF8aCIObhH7mQMrLn/HZ
	 mSXLi/p2JlUY4Ar9KLr4Hi1dweEfuhp0ZucPiarxQRFYMoLfJumS0Rn0jZkURcr37E
	 p6Qm+Ohdx7p58P0NaZlZRk3c5G7pWA9CLE9e/9p3cuMlqLOmsJhC8Uul+gnaV3zYlE
	 9pzostiE4AhutQC820Xd113Q5QKP3QVVPxswHyy8LLM65Cjjni4tLHoucanznUtd6T
	 4vobsx1TcyPrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 678D1C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167061608741.6617.7167262524475549072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f62a5128caa4cffce913717947cc3d10cdae75535caa51e67f574b1485ce2709
Date: Fri, 09 Dec 2022 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670616087
