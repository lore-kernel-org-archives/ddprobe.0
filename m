Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8E3440E
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 20:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2251C433C7
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 20:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691179988;
	bh=+/EssOsEM9klF+YzwgaJd+XF+b0X5MpkCv2SzJH6xNE=;
	h=To:Subject:From:Date:From;
	b=PTFtanijlP3cYyYf/hK7cipC2WOY7hlOq5qHEiFdGpfE04QxlmiRsPW+km2TWbgJ1
	 IZwPo2bDj6H5MZPmzsdfBZm0Q4m8FRwF6seRAG3LJmdjFZ8VrzdqmzBu+SPeYpPmLN
	 KH6dfmmdtz4XnicDngfp3KmyqwlGTVMxQpk1ioQ7dEZOrlycsbrjhBxTk7+EEA/AN1
	 9ObaONUZ+vDNcLb7pZZehWEKdQvKsyESg5OCqjI5Xa00c2FaMy9Nc18QocHemnPrLn
	 8xw/IFmXSxukyfoWIeWCoyCFbHkhczs8zmODbPiM8WRC8II/W1i6/iQbSSJmngFyek
	 ZZNpNuQVLuotg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FB0C001DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 20:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169117998872.20499.5909459754112476844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0cba466e03a8fdcefa4cc61918410158223e684bb618132e32ed89cdf9654ac
Date: Fri, 04 Aug 2023 20:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691179988
