Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C43372
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71485C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665030653;
	bh=KAHY5dGymxDG4uxoDMQpO+CBnj5rZu+AOngvuZYzHlg=;
	h=To:Subject:From:Date:From;
	b=UrQDbQl+dMoV8QmZhD0qHg7tokWCU/wS561bksUmic3e03Xw9lVz967x8ypahNyTs
	 eBguTrk02M0dg77LTMJH9pXR+RQfNYA67yXYqbODg9Xks0Oz8ItlvLMvV2hIoK2v1k
	 oGmnyBQcMIBwGFxyzQ/XC5pzhowZolOyJ+uumOoYajlFlEIPvjsVVyX9teoqrVYXRq
	 l7swtNU2Hu4B1HTIP0iQLRhYdVtj+rfouzzPw/tRMK0G5a8P0mIIK5jTrny0cNjeB0
	 1kPamguAxtkp3jckifNkUQmtgFS0eGjJuONaEk5zKfB1kcYwScQyyEcqSN3SqBmU+0
	 lCZp16ixo0Suw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53423C433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166503065333.22840.15619305106373271560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd9ddc0fefaaf9d634ccccd30066aa107149e3e4d9c402ebaa280c0b625fd4d8
Date: Thu, 06 Oct 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665030653
