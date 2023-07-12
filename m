Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9A57F9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 03:18:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A5EC433C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 03:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689131888;
	bh=uCv/vTJ2xAMHCbOppA4zuPk5kEixfjdLJBQYJ14xncc=;
	h=To:Subject:From:Date:From;
	b=gmYl3+2y1zhMfexD1LC0fi/isjDILACr3DeYywTwFKkxT/JPKXr6j8iEy0SRzuvCD
	 vBtL862QB+v8NSsPLv+QPPpO6Nasi297gxaZ1u4gvBzej7GoBSJxXuf6ds6scRUe71
	 CO7DK+ugkleMtKcEz4Q8Ra2km8tVK3djIVGB0S7pKvfLT6v7rSP6IsXmzxyE12SdJS
	 vIrO7vOAS8pfbqmrq8nVOwEtRoiEf1zHhUsaWA3k1wDAHpb6YIjvs71rfUJM6CC/73
	 1lJlhy/iHZmaH6i1RMe13BbCx6gEWd85THhcGX9PTSIwlQE6ylaMvH6Kd+OC7PQDBS
	 y6ZjTpHba3jCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A42A9EB64DC
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 03:18:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168913188866.20235.5679159867348010921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a1d6c78d7ed111dee9bd1f6bbf735e66a448c5842df430149071ae624b134d
Date: Wed, 12 Jul 2023 03:18:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689131888
