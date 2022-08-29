Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D9F179
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 06:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77594C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 06:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661754652;
	bh=JxB9W+FpigjiZXud52cl3oqA+RL0LhLZSLV1E9DgPNg=;
	h=To:Subject:From:Date:From;
	b=RrYmCA4zuZOUaiC6V+kLCXAhuYdXyyDuOAEyLm3wXvaTM1fWyWWX1PzNPM3TgIF3a
	 Tp6Dhl71cekyVkVtpRqfXt7g8IOlQJCYQq7BQ5+sKcf6I5waN9m/u9JS1OJfAj739s
	 HX74sriG+5YlyjlT4obEHlc3qZrSeAkWo814H8LO+tMYnmmM/zZOJ7fn7Z+pTYAW+R
	 qqRvkNJfTaIai4ZHzB4ZPV40CSzq/M3x5U9/0GiRqRK8jbXrKRQA46j2hbbHLeQR43
	 JJef8WyND7TmslM7VmzhgrybP1uBJsOCo0HcmHIF1ySdGZSA7gTDWD0K1GO9WScAQN
	 Hd015QfvW8A2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 567ECECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 06:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166175465234.17790.11195522493619768947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3904da73a6b1b164e59039f92c6e8ceab999b37339ff90caa46239546cb2cb37
Date: Mon, 29 Aug 2022 06:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661754652
