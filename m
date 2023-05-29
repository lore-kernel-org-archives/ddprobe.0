Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441195664
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 09:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA38DC433D2
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 09:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685353325;
	bh=ASe8bt+2l7urHo7H+JjhpsyxbbKDn+ARmVDTLWnMKy0=;
	h=To:Subject:From:Date:From;
	b=iCmxgxcqva40aDdCexJJb3RQa8hb+72zFoSIw3HrVfAw6H5e0uAbuzUYqfsWCGdFb
	 0psINY71JLql3Sgm0i0owTJKIaNru9tmS99Xw9QFU+f/2Aa9180Aq4fiUV25FOm25I
	 AgQK6es6psZZgnz0MYbsVn+Ew+ni3FirY1f3ryTB7KJUN19JZ6GKyF0Y1gY0pc/e6/
	 7QxpQyyMauLQZT/WYsnERmH6iW7PkS3OXd+MgaWO7yXF68iWs7/4rs3Szc8mL1I7GD
	 nkbfF4a4ts/gIAk2E4uvIgC5gupYlg8OdDW2aLAIeqmvTfzha+Vk7X8H1QTj1Dc8ly
	 MxmU2KgubZ8iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA197C77B7E
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 09:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168535332581.30187.2148569082859026681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67619c413ba94504e28f2edee08a12b6bba2c2126afa68e741ee5a74952ad03b
Date: Mon, 29 May 2023 09:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685353325
