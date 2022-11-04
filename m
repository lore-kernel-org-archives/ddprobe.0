Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D782F803
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73DDEC433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667595054;
	bh=cSswZ3pWJFZiL8gjzYSDvfRDsfy6KUzI4CHEB8es8n0=;
	h=To:Subject:From:Date:From;
	b=TyN45QK9xAWLvg+UXK5aD/eTwvHnggyj4bcqsabVBKMm5SutiKroIu+MlF5C7542J
	 fTB2Xx/mfjZziW86VWJ3Rs8g6W79vM393IqeQA0CQ9B6lW1NHkgaJrNGpjfUU9+f7X
	 hYCorsByrtYY5FAo5DJ4rU3G90kMCSa16k8Mwefs1J5i5fMUT6atdYcUoyCqT8rgCD
	 qHhgHzn4H6FIciTaLRXNtqsi8Nc4nLgTHqPAy4h7eDACftQIaAaxf1ixtb/7gmp0Zf
	 Vd/LWbOspysTGyf4E7nRmW0L/L4jfp7LiFlCae3N7xQTOBNuNiyefGhhGmC80fduco
	 vKo0aOS0cC6SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57646C433FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166759505434.28080.12106338774769035636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b3569a9c9b2e8bea4c1b3ccc6e372c68926a9eab9e27504c4809929d2fcd9fc
Date: Fri, 04 Nov 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667595054
