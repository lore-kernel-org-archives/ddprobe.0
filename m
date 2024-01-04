Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCEB249E5
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWRMNCzD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0059C433CA
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704383296;
	bh=wDhzXUTp6lqXs78YW1ZNCIURz06HZ9B2ajBKcMkmKbk=;
	h=To:Subject:From:Date:From;
	b=XWRMNCzDrcFJUACWnqwZhptDBhrQyNaP51zJdXhLIY+jqBGwoqWz6I0WgAsEtpnDN
	 ebMUPvuTC3pviFa5RKWyq3y9UPqvVzc2GY/H+ZS2XbhO06DDJNTm7rr4fKZUIzPBmO
	 CLiK+MuQwhih/IAJbghFN9Llm1tOFfJQNuYK+E5leRmWGr0CFf1/Gj8QbEiFC5GONY
	 qQMeZulBTWMfi7/KgZ+QlX7LvkiD2BoCAvjBTbKLiJZyqEiQqR6Gw//I1muiO1dMK4
	 E+DqD/n1YFinSfb0HQSXwtpbwGnWxRZFnNiJPYFsIEGzXT4y5vU98hJoD6uAPwdybe
	 7MDMfP6O+vGtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 792D3C47073
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170438329648.19252.17330007771634485952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09504cc6fbafdd15dbff0fc69e5360f101ca474435ade07fa079cf21c6810e8
Date: Thu, 04 Jan 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704383296
