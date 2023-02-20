Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735402F4B
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 12:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11185C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 12:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676897946;
	bh=E29ah0kObYTSd+JJdDquB0qYXkHAbpjO4QLcw2n6EA8=;
	h=To:Subject:From:Date:From;
	b=I/LQFZ/nkgstQA2/bqZZgxMAvn4G1bbK4of9/SWikmKdK90GMzKj++BPXi80pbf9P
	 5aI+TfyfLXewZ/5Z95LQpt8yoV640ry7De7+//xwCOGZuGOpfPv4AjLeSGCx8V98Xg
	 EWgGdBOIRPm8pY79OkaKgyLhmqLq6hUxEmVKJrOHRWzkzvagO4RbiGO9Ts6a3E75yu
	 iE6UcE53AvGBsmGB/7gyFoJh2yqUb9EMgD6GOOclmZ0l9I7yigOEo/R1uUpLP4PHVG
	 yKmKmKwpY7hMAF7qhXMthqB3k7kh87noltlwgkubm1Thqtx++kgmEnlEGMqRvGFy9U
	 Nk8OoKYO7HzKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5826C05027
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 12:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167689794580.28910.7808454143861178093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b08b0a3cc5c80f3dd2ad51e3f52a12a4ac66a408d7f8f5624f01a5ef2194f4c5
Date: Mon, 20 Feb 2023 12:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676897945
