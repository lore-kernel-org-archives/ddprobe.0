Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F15E1851
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97CF2C433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673144487;
	bh=VquLocJx8OHfWxzHy8asvL9JTpaiVNzNcqqscY/DdTE=;
	h=To:Subject:From:Date:From;
	b=l/BjM7cwGcivDXfz5B0sQ1kBCtCJQPDJnaFvjMhVtSqokQdICE/uejlUwT5WloruN
	 LzmQt2SSqZbpzzRUIVdnsrGvpNL5VhPyGZwOhQGEBtu/qlneZSEzZJH96nLBKK2sGh
	 oOrV1lN6cLHA/+2otFs7TCJgisgrdcUPbliTs7Ct20jT6KBOurdGngUKsIFuOyGWG7
	 cNlqw6maGt/+onnA5cbeblXNLwQxJHkBN6KpqHktHbSd0oNHPw9WAo327nT3yNVFW3
	 3nuVVTvXdwLysGpZfoiH2Tzn0Nc//go8/oi7FHnyBDVoOA5cnn0EH6+s98rqE4uc9S
	 ESh1YriJErVfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 767B5C46467
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167314448744.8648.5742959170459665676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02631b09a740536f60b6399af39f6ce9d79e72efb1f4eb0cc01a4e3f2a5014b2
Date: Sun, 08 Jan 2023 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673144487
