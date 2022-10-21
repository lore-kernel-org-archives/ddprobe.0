Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF0CD7B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CE58C43470
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666350653;
	bh=kfR5bP1u4QtpGtwNfdMnXew6TJYUCUwezRS1E66VBZs=;
	h=To:Subject:From:Date:From;
	b=phjN6E5dHM8PN85C4S+8ohmS4jl2GidFhQuBrTXFhR21mCIpfho0TnUOiivZyE1Zy
	 44rPO9cfS5TgN4IglNSdd59m6ugvDW54kqfXn9TDyCn45uz5NMcAN8aCEHqtoxMs5d
	 UtkzxHioZuqcbi5iQ2e3ww13s/X6WJ8ahekAlE0/l+1gjATcBDrqHytJ1umS1g6Bt5
	 LCq6bh3vNur3TOgNVFvtrrzgm494YWCifix6fO5lVxAB7i+jUkjSoJB2HtOBMU9859
	 kgKiKig6yDX7GmWarIEOuVVHp+I3yjt2K7UlK6g570EAxziTWOzISj7veNzt4/K0YA
	 4inj3tj+4aT2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55ACCC4167B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166635065331.29214.17880649349731873580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abda70a65d3fdcc11ed39c098131d8158695a9b654e635519656814fc66df369
Date: Fri, 21 Oct 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666350653
