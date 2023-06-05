Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6567224E91
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 18:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED4B1C433EF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 18:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685989866;
	bh=ryyS17rkeDWgFsgS7fusivcwRR/EMsOJhQNBlPS5Au4=;
	h=To:Subject:From:Date:From;
	b=JgKrVxt8EA7fWadHIzN6FdwoG3bZSqOjmAcCtg6i+++wu4M9G39v23MrZlWSujkn6
	 17iZpoNn897x4W4LKKEFdplFh6GFRXFn9mRA3RwRdXjQFVlULXSJYsiPd04Q129IbG
	 M5KYcYLSWhSuDF30VqORkY8tEmEQ7PNyXS/t8/NaCSdCeNZngkQxXP9cDaDmFjZQtw
	 2zj1YaiZq+c35qhWqqz5kdyp0J3ULTqo6jGx0jbYMVIirD4slApws4koWqs90ekfIe
	 LksfSlbkmfm0eYb3ZWLVjkf9HBTBkiieKh8AsZMus4gq/IVF00Tbub4VhlAzaFxbJP
	 GuyWg75zbC/ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCD5DC77B73
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 18:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168598986583.28767.5054233657821531529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cfbd96d9a8dc7e96c517a80b2d06228f92c49f0006f3e9377f21ca84064fb02
Date: Mon, 05 Jun 2023 18:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685989865
