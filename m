Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274E5206BF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 22:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F065DC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 22:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686435726;
	bh=YBAJoTKFR+p4BcJrVzdALx++IivHnKDmIhb6we4l7V8=;
	h=To:Subject:From:Date:From;
	b=QrWf9euIQLtwj3d5fTNlSa6GpcDmfi33vt1Klo/vZcbmSVjxxeja2WpTO8Tfi+9Jv
	 qC210xnjmiAyIIAW2Oy/sevRm3wPalkSOEc7wf8sh634XKFYa8/tx+bjoxK0EalWYu
	 FSb1FhNiSej/LYII6HY08N0RcLfHCgoLwHc0m1s0xtrlnqrEL0lYDhSx6SkOlHKHZQ
	 jRlyNxYpruR4odn8eTs391nMswhW8UjXzXkT42aWlIApdPq/pIkQXZbhhyvjDwv7T1
	 bcIjVs2xaPA+cuFDX7wgSUO/pNkIWN2pwqSJnzm830/0lJnh9Z53+7QT4D9VlhSa6J
	 acEZCEEkpjXXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D23C7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 22:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168643572582.1373.15055121839999188152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c159e3271bb3d1205126fe70c53aa637d0da30e358e98d123214127cf0df59e
Date: Sat, 10 Jun 2023 22:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686435725
