Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE049181
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D37EC433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671149487;
	bh=Y5yUoDT0B9mzrLqwoHq5D9Cw/JPG3oO3QSlUYaLFdl8=;
	h=To:Subject:From:Date:From;
	b=GOT1l0rW2f+nl6j/ga9NrGIeDd7w4JaxrtnHmqD21Lj+I92XdUhUJNzEFMWZzOWWN
	 1tPXSUGuPWFzh25Q1fbAryiXQoYulfIcJ0Onmr6xlU6A4cQlqLK9VQ68Y74XVyuT+n
	 gmpTMlY+FBMc0X98hJDgjWKTIn01Bg+rBi8FIfVDk6wUPz9dZrfdmoN4NALqrGuL5Z
	 eUzz5h3MhKwC0bC+5wjykKE2GuhzmWxKRlKfn5BOgVGmLaC9ZNR/ZtbVqKHkrlccNp
	 pemR1awonCZr6ezTbRVow3hYOdoXVcA6By9/12ZYv0XccGdVBDG2jb/8vAniSK/uLM
	 o933wbTKtgVpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E7FEC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167114948738.22177.33886963951263905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3430fc07ea3fd065b3fed32d5fd843ef0e650a1171eb18e54990dcea86cc03
Date: Fri, 16 Dec 2022 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671149487
