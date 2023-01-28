Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACB65CBA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 15:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CC1C433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 15:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674918785;
	bh=gQD6GcMxno6EBWM11d47iHHf9BLTNwj0wb8iJdok89I=;
	h=To:Subject:From:Date:From;
	b=nEh4kkj3ohx/vX5uLWPkvWy9EgnK0+iTI95qYc0HXvJpBz/SoSItOb4T9bV+9LG/G
	 eMRIE57TKAYltYovTer2NlXDBB3csye/tN7RNzNaKQYSVCylv5RS20BIyskz03Mpc5
	 oCAEbmhBIwy6ekwmX6Cz6HLJ1QkleM4r3G/qnnBuEbnyHVqxVQbkPsY5Obvq1R2ugu
	 2KUF4WUHMz1IRRctXQJ8iBq57vhZGhMDKGwud3CT/1sRWba/2gx2yeQBqOq37ezZIQ
	 I4QqOStVCRNG2WoE9y8T7AJ3b0CW8e1zGDXQPOg5cZM5IfOBeDUO7c6385RwMpaePs
	 5gbayQwowNA0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA577C27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 15:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167491878575.14673.18017631403107464185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff47461652ef98c98035e9f2b6df0e2a91c273c696549609ad721eb0f9e8d66
Date: Sat, 28 Jan 2023 15:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674918785
