Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B909C63A
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 738A2C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669620054;
	bh=04e5ClWFd5EFHh9+7F18ZPwQm5HQHrydHVbDmt4MRoc=;
	h=To:Subject:From:Date:From;
	b=IOis5+VZE740UtUR78Y33lxwNmfKpcDb8U3opw/TckmZrlqr0xrGU+3CT/N8hc8++
	 fxPsh+XVqeIHixbCeh0sGzKzMUEjwOCjv4g3HVES5qOpShMXNy6nX66oh4B1URas7X
	 aReWcg8sj+Pr61ar4UOuLknGFUf4TUmAzCjp1wBtSgCe6JTHuFt7I+pb0aZFX/Ex8Z
	 z8rsvfa8UVc+3rradQmFWZCd3QiEkfO0CBnzY1pKOyDYoAcR7j5ndi0Lhmny0xNL0Z
	 uQnn7Zl7xebOLTtbxLovY2vvqAWYQ0XaKpQ/ofksG1vGaoA5oqNvWTCOI7/CTEeUD8
	 rFpYZq9dOatAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56482C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166962005434.2135.324045957856732472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a01750b7121e817ab7c4f05ed8fe4d9a2c366b083983934c96889a900488f6b
Date: Mon, 28 Nov 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669620054
