Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B05221843
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6834EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665705653;
	bh=Q9QjUJVzhMJ0tYYFZpj5HX/lNadNfdl9chWkqEfTEaY=;
	h=To:Subject:From:Date:From;
	b=gqTPGmOXUlXmqINQweL4zHHvMkHAu47Ub1bhnJnkP8OzybVD2yp1iFHv0aYTJ5wbr
	 vWHJvNKYiWbNpqKOLjgDuqKdRbt7G0SdH2+ObW9Sg8lx5yqyGoB5NBgZQASoWpdwkg
	 n1X6bNzqFCoggV+eNjeULm2GbFpWnUrK/hMgXBhmAaAMe2RgzzLABbxldwgWr6qggW
	 Og+PMlM456VBApKeNnzaQVahhexPSVgEH4ktmpkEL2P/aNPhDtVjW2FlkhMMDGuNhs
	 YGQVA+DaB1jKk4H5dSlMranFK5DsJ7esZvWWDd6VEaOluVmis0fcnUZCHJfWz/gPn1
	 UTsQAFJyIdiAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E963C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166570565331.31227.16747245328985208369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa52c10515b9c56471e1340c7b33b0e980331449a89094c92142f6528d05847
Date: Fri, 14 Oct 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665705653
