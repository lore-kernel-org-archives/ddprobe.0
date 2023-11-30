Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C4254FBA
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxg7qyTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF2CC433C7
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701362296;
	bh=JIMhmiO/augUwdcYiXznMkIhOj2d0PkHPHGgK2j49lA=;
	h=To:Subject:From:Date:From;
	b=lxg7qyTcd7zO6H7t0DaRpOAR0MCcH9zEWdsQkz9PQCjVqqYceNqyLWTQnFknSQhIa
	 qC80wATDqGn+hLBDLD6QhuIkbMJgiW2qPmuD82cafCNvEmg+R84P6Evf8xKthZuRxs
	 VsFbqKHxhKZoEIbgvd5BXFSpCp5FRtjkhHf37fjJs6bjjsduVeiGnfG2nIYAXgqUZ/
	 CRYyfkP+lGCV9HMQ70V94NyV0NaUdhOccpnzb0ANYz8dFwp9rToEIQL5EtkVjEmdtt
	 3sw38FRTWG3gpye5twz7XziVSSq3tkiNXuLx1ODhYY5DDRJHyNeReEi5ro0uShfKrX
	 8isGDt6V4oziQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 646FEC4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170136229640.536.1285856286632579891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4594cd312de6ec101faa54633ad84ea753e6e44973c92cc93b87848591d8d65f
Date: Thu, 30 Nov 2023 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701362296
