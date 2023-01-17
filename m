Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF6A1841
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96C6AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673944287;
	bh=z83cENjoNHs/QZLVLzA58cZcBMJ4jPone06Y2max+hE=;
	h=To:Subject:From:Date:From;
	b=poZiydN3fpYGeMJdHLawuMnbD3xAlgAwrhplQC0qzrws8FyihKYtvD7iwfRQZsU77
	 7baeihWMCRG/+uf58ZR6xMwYXAGYMwvnAvEfgU/2dnaO1hk1DL3MmniNziqiofPg6q
	 TJ4I2T0OalVvRtiII4QcEVVLcRGHeErmllkol7djxINqV5lhb3gH7VSZRBdo6/7MPF
	 rS97rCsBS1XvPykBGfHSV3vXO5HrNeCdpB1CUcz9l7nz1k1qG+ImnDJSDDZAiyhC7t
	 ZOcxeKYHsFwSRJnacnJ3xTr7DTOSx9sJUX5/HqDkUJgqwcSdEcQhGF0uh0SaUIg0iO
	 cb1b1vkgTg9gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77A91C6379F
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167394428748.12728.4468403272850050696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20b6eb4029c226919855a233b976fbcc6474235376ba363c63c402b878f316c5
Date: Tue, 17 Jan 2023 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673944287
