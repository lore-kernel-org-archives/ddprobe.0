Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C36C10E7
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 16:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06FF1C433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 16:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677083646;
	bh=4qRYJfO/Bz27/9H7VLnGbGdepU/gIkE+JM9KH5MyTZ0=;
	h=To:Subject:From:Date:From;
	b=WRJ8AVrukEISilrLhfqVGPZWPJw3cQ5Hi6s/aEJoUiRm1oHfVXDR0Ot9eF6JnMvBB
	 YJM27tLwtj8USYjhpHJZKGsKXX1faN82YboLp3OIi6uKKPBCGr+oZTb0Eqtiuji1xd
	 ufwDXnThVuolglCp0b/Pf2fjONz9OFzQWX8pi8/z8YYC1gSljp66cHDFC9Y6B0txIN
	 cbZ5rWvxN+YdKJq/vMuQAeJbsxZMX5lHISvXKPifhpsI2fh1BOtUy/G7nlAHQmdNOb
	 pB6ejgj6NtlfTLn1XkUsTjfBONh2FE6qDafI4dLXdzmUqOFycQtzVFTuCcL3AUYl2J
	 xCS3kVdrWOczQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D47C0C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 16:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167708364585.720.12528412375708264740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ddb460d659541328e7ba3f652306539995eda5fcd0c4ffdd41102a4d319718
Date: Wed, 22 Feb 2023 16:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677083645
