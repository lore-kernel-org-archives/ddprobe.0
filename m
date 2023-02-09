Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D692107
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 06:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EA9C433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 06:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675924865;
	bh=6uFfYmIJcKrin1oiQZOxj5bggSLXVvM25vaNlT7FGFY=;
	h=To:Subject:From:Date:From;
	b=PIAYnC40sGX77ScTqfk0DqWaecbA90VSK1NUjYDhmW/V11dJuEbNfnCMZTKNbtZhv
	 r7zp/Un+ehgspbjJzVQfGU2sZgpA3K3VTomc9pSJz1C1xVm0+bWcMdXVqN5ryPlz8W
	 hmGOHUeO0gx7P6IfOPw0JEm6DxoKHv3btLW8mm22RhZnRRgAMQlYgDU3y5W/27oycV
	 7roEQSRLf0LQfiX05GBDrsG30VV6cUZm9uCZNOTn2xQbR2tFjCSjLj599HOiyE/D2o
	 t13qj1e5GJmlNzmdCIPNHdTkF+L8hv6BMIG5VQeXIVvVMSByGjO6awwv98/HnW6xcZ
	 nSS1z/NSytiCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7935C05027
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 06:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167592486574.19250.4787839171454859150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8eaa0685b7286ed92e00d6bc3baafbbbef1267c1eea51b98de2c47a5ac9a4ff
Date: Thu, 09 Feb 2023 06:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675924865
