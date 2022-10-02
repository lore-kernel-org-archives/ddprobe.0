Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8F233D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AFAFC433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664718053;
	bh=KU6MRjSfyOG+sxTP81W2LbFY84xGGA1y07zsjF/nNXE=;
	h=To:Subject:From:Date:From;
	b=BRBj7HDjhdMRE4R/bp8wxb5WJG/ql8aqEkJL0hW6xyxKpfj0pbj3V3Qk4h9foV3oS
	 JPwzx6s8KILRAzSd87Nrhzzj5Cl31qBUxNmJMmgvFhbjgctUMBo+nhQIG+3rLbVnNp
	 VzbQ4L471vSCv8yMaaTavz0Xp8MpMv9lE7/mi9eViv61gIg4ZtuW0LBo6AbAlMdD8H
	 TNH61f47F1WZCdjgsOoh5UnJLMpAuFA3UUsF30rBTmL8jECIJUxTc4T+qMOt8nJs82
	 RkBjQGz/7cIS9zi1vfjrUmbnG+wsxI9dYBZPyLzMwCsk2DYAjqB37Wce74voF1ahjr
	 EQ+ZBvfzNZSFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50462C433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166471805332.14387.6095045084227285994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 090ce3af66e4c3061e373d2c2ebbc8531263e57312e1b42137ef8ac67574cf7a
Date: Sun, 02 Oct 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664718053
