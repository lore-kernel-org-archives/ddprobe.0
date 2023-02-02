Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3070B882A
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 15:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AADC433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 15:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675352765;
	bh=1sGl1PrhFDAhBsH2s/0+OkKAHHDt2lXDkUd8Q5ZLi/E=;
	h=To:Subject:From:Date:From;
	b=u3pCGTXc4AQU/SFGGtMl4pAR0XXNd4HOR1IdHV79D1yAlLsbB5psjDaVmZ5ANn49K
	 jYhm6M07zTZOzYQNDeSVBEM6P5+sfwYAKdeXFid8eB0c9KGmYmjxtD6oIxnN+rs+oc
	 6NdZH/IKl+UHfSvlYND/xmzbETjsXhDXRAePlMRT+hAWjOpmki/xdJTmN3sn4W45ih
	 VGw7zjVxT96ryCeNtVsruLgCstURhePTAJoDxt+buBaqgy1xgnrT35Lwkwz4O1slYE
	 Y8qlHOaLqyUcyRUo8YgSQ+XKbJmAevFEc6Atx7g6IBFz5f2XOk9iIko4nj082cuVJ/
	 rGfZRXm36OsDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB747C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 15:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167535276574.25420.17198760645342707546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ada292493428fd14cc69f82abc22506a5c270f80007c6126a3ff7b0469fedf5
Date: Thu, 02 Feb 2023 15:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675352765
