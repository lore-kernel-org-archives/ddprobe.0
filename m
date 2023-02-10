Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C04D7F4
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 05:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0425BC433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 05:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676007786;
	bh=ZKAxhnmQN1KHEH9bloLqjJ5shP+GudOSAPQkXXLXMYg=;
	h=To:Subject:From:Date:From;
	b=md7KHr6YOuTjRfkBXyR7opQBfxx0LrxROuoGpKie/Mhq5MCm9kXjtouXOktJXDDVI
	 aLu9T8F7joOc0nCwsA6dBIRVcv2JzDU7Vhrx+tHjSWf53Tk2/1+SzwiI5JVIAqXqnm
	 2G54SvF5wkSo1BI+Vt41XunHiPPwpzs9svCwikuzAIsLi9qCqU4djkCohPG8Xzh0b5
	 aGkSlbhkeiiDU68T3LFxpjTLT0kfOXMBOvbLAPJVk4Ti8tdBihxSgDtGDYlhsUNYeG
	 P78mlxowybNC9qdqpgnRd39+yDogZnTFWgB+UlfzicG4JiZSndE3PcWkE4DwXohMDo
	 HJAkYjvnDh8Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8A95C05027
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 05:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167600778579.14818.3017689442214919192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e862ffe2b55a4b2d7967b3fcd1a6e81a8ed72356ab0c904619941d627972e617
Date: Fri, 10 Feb 2023 05:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676007785
