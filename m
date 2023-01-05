Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B967B
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77704C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672885287;
	bh=0ExJRSYBNe9JJhdeo5wpFUA7Oc7V8AidiPmQTHTKwDo=;
	h=To:Subject:From:Date:From;
	b=QgKD8Grf9/AjNDlx/BMBUnZKwlGtx+l48NDbraLkPaq1zKD74pg/NqAcAEekarEdu
	 M7Vb/gpsoZ6gUVz1JIchf2bsXdthAKP7UlB3Iz3qtnr4nof73S4mVhvQxb1oIfFjTG
	 l8vy8HEj3MbBFa4m31sxjyyj0FYhUp+7nLnyNFjWFVwWWEPjKQmpwifcRSaFpbmQ3B
	 C5GPIhj2WoUdOoONa22x7i7jz9Fady2f90UlpP3y4XGDJGiHBnK/z6J5Pu7M2gv5Ux
	 zBaFFiyGyHnxrnqWVbN4YO6B4GaEVVgIION8z+dvnqU5LUtzlZDSCdYo/zl56Hstp2
	 sz4MUt/RJjkCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F039C46467
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167288528738.8586.6828130143000186714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf5adb556ee02514fbba0b06e7f398fba18f03b7708b6da639410fb402bc61f
Date: Thu, 05 Jan 2023 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672885287
