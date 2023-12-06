Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4A6D27F
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEWg7htH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 813DDC433C9
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701834496;
	bh=KBL3WO1mKHyYhZCDS8lOLepYbJpySQTJQZ4PT0PR1F8=;
	h=To:Subject:From:Date:From;
	b=jEWg7htHYRHnarZiD1oGT9LLaEivh+2H+w0aSkbWrAZg5YRNmhAjQMsjoHfLGHZDk
	 yfozBeqG6WrDBOkkTLoJez6jRVYUiLcS4cyuHLlPN5dRMx5OKB8tKncDu7dISvYN7f
	 JrOWn8I26SNPayVrKJoYpYV5tRG1yUZtzwZmRhlYjhbHaKPuc/nhGYLbKeL01EH8oa
	 22y4XXxX0ehbOJ6mUwU7Ua+ZFOcjS4wzjTycvpCOPjyXTFbKEA9wizwPiYwB9o4BpX
	 bET5YXrZ2E+j0HllGvmkzKgC3ngqwWm1pyZDgkxQEyPxoDlkmuf3fNzNd10CqYHYOs
	 P2t77U5SvXxTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 602F6C4167B
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170183449638.24514.10709386742145984892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0be06c3044c2b5691226d6f0e7be649c3da548d5028181a6710fd9da8d6f537c
Date: Wed, 06 Dec 2023 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701834496
