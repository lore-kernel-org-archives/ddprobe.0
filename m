Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1443C7E0
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF37BC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670655087;
	bh=7P0sBTVolqvb+bKw4KAmuQt8qS3wHEsoWXUhqS0qxiQ=;
	h=To:Subject:From:Date:From;
	b=tuMuyaj93yGYmvfVk8Uc9xmJos1maAzFVTKzlBsrGwfYswLamqPUPppyUbpOrgUxh
	 7El4qikh2BkJbOJWPs8knuXvyhFwFemVuTfAqWyjN5FklNqpymoEE+bmfNfShXUnsL
	 ACpYgKpQtq8tKEoSGU5eK1wXKbdFTbobQWywVVsQsTTn1IdckyPiS04GlnsWQL9dkp
	 QA8mg9A4wCYRR9aO7C6SeZatL1Si/Uo+LjnhH9TC+wrleaurxGSYoPuG4BREd8u+t3
	 uPt6zwA/v4DDJXrrIRdJm8eTAIb94IQGaJ/MBFQFaOWoSlE9Oxh4743mEYHeQFPmvX
	 S7hbSQYVy4JIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3F0C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167065508763.9444.18154228870820114675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81fd94405be8870f36bb3ba8a13192685c171466418f20d7bae166463b7eb0c5
Date: Sat, 10 Dec 2022 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670655087
