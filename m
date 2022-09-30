Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB4D5A88
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72295C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664566253;
	bh=/GIi1ISD+TbQ6JAfxtMFvCG65672wcIwFX1GH69mOZc=;
	h=To:Subject:From:Date:From;
	b=tbmn3X7P/HX7rl06gQAvseDji/dl0KhUmMKHvWRE+H4u2YgzKpHjBSu5X88+oiJcj
	 0iEyolEZy+HFcia6AAoU8Z7NEpW+hYhmE2KEYOoJHY8CVIsBqtytrm1vqo4ZD1N3YV
	 UIFUQf0P5GwUQ6lbEvA1oJ8v5nEW/jjBckLY/j/s3GbMCm42fi11gb++IbIhej3X+L
	 P+ZZHYeQZljc+VAH9WnKufms67MbUWuOmZszWI+m4lvelBmrZPhSeq479y9BnPF7cx
	 MAxXO+NWfRMEmA/MY+CrKNq3l5uZhZ3UQRIcrA4sMvIYy4axzV94smaO6PTKp4EAkU
	 UNEt3rAWgeWEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E6EC433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166456625333.27856.895981225484406223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c205bef0615f69d3afb5e277f978f1a12853e83c2ec2423793b0c86cfdf5892
Date: Fri, 30 Sep 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664566253
