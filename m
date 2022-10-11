Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86D9290D
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D5E9C433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665485453;
	bh=RTWxa5GT/XnNg6hBkMHLNWTgU0NpHXUQZLUbCHs1qA4=;
	h=To:Subject:From:Date:From;
	b=mXmq9Vx2xXm80ktjGrdm8WLTepB3qBcC5FOLHUN8ShZ88V+/k7Dcj0XsYNaWg7eeK
	 68uFltDxTkmkH2rIWLr2e/fEWzrT8qxqf/SOAzqKPMEWcrVhzZQV1cpJQQwZQTnQfy
	 vXw7aGWGREewNCuTdb+cuTI7T3yet/psCV3ZjQZkmgojwtMd4LdWCaZj3GZKWuI6Lj
	 ajH2w7GMLEvRaj8YBVXT+lFz0X6vUXJDgUTZRnmmgAuVxKvRZyVcku5VQ6Q/ex1aRV
	 p4apuHvvNiJzoMG5M8/siL0CFvzBx0zN+oQOx7K6TIj/zwxrombVE7bRk9tf3akWbt
	 Kc93CYw592ilA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 528E7C433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166548545333.24553.16341925080016243030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77da59c4ad1c9823d284b1ca5544feedf5cebdecffccdd22504550aa27a36019
Date: Tue, 11 Oct 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665485453
