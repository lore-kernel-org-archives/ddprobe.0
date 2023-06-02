Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6510D10F6
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 04:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C13C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 04:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685681165;
	bh=dstbhw9SAlMIMQ3981PoeJbRp1HbNjgVqJbXUKOXDBo=;
	h=To:Subject:From:Date:From;
	b=X+AMAfHKGqypEKODjds05S1ZoAIAuppiS+QPAKIABwZFZIhlenmWhywatUFhDE6G9
	 AfFvsPYtgdtfzABoVVqtbIOgBMhK4IKEMe3UweVaq+xM5fAeyQu9ZeT1EKEQflo9kJ
	 WKsIIEOOWNrkO/UJWMJgZQyM2WfzthrIVEoKvMZdf9M45X12PV3wHfTuS98jE++Riw
	 d5jdcdnQ5zoyfr74lzqMbhw3e5tggugGn6NIf9NBoxN2fMVu3+nnyiJi+8GTd7GuDP
	 p48guE4C7aVHvmpwxk0OiPiHHYSKnlHO+Grg+0weNskDbXUWM9L/d8aKdUlWyqmcDW
	 wAPf8sgq3URdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6DC0C7EE2A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 04:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168568116580.21548.10954545275834473554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0537c9a55a30fb686eba2e8fdbd1158dbb9fbe92ced3275d2fce0af2007db1ce
Date: Fri, 02 Jun 2023 04:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685681165
