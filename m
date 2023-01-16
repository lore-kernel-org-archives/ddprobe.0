Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E28E71FB4
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ADD1C433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673873487;
	bh=2rd6DodKskp1oJbUQJw7RoSkH/i/glC8KkBa9hE8crE=;
	h=To:Subject:From:Date:From;
	b=I61Y+4sIC7EeDDPjDMfFyCxhQxsMFtoeycgSGN9GH9fJzz81eHDP862/iVVuORPm7
	 IuJswkpQwdHHmRlKJpKdcQJLltGyb+KDPCpoyt13pYSP0va90Tc46XlaOs9ZyqZVlW
	 ROBcuM8lArv1hey9q5qIHAe+CLR8AA7ASSlgtVgCe3N2bbaXAGy3+b/YsHeci4YSPp
	 hjgY1bvioI43LXVwNQB1kxukhaz75d1y5TwbFNKiG32qcT1WEAt6DCY8hbw+Paa4HF
	 SLPrw1DdfIez48nsCkobtNWLbAaGpjz1mRLdZQ0hj3stBd+w+MlaLCoQHxRwoHwQRP
	 NZMtfjr9O0xxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DB94C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167387348743.3034.697761787419681463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d6c9f90b4eb6c61dfab8f1808262062adc9ed9e99e4b4c58ad16ea0650c2804
Date: Mon, 16 Jan 2023 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673873487
