Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86BA163
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ED0DC433D7
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667068254;
	bh=Vz1jqbRYuf0wqDmfT8SRCl2ewz+omWOhhwPea9UstJI=;
	h=To:Subject:From:Date:From;
	b=KVkG1B3yZN+XytUfWR2dWMI72o1x32XgKrQA9N5OcFd2u5jTQsLNd8GaGOInwdTa1
	 9jQSOXQOWWrztE5f4IhKjOAhzOVvLXdeGCWjX0xBUEcFMhiusnNTZLrqyz9UX5f2IT
	 Kum941Htbp7j5CDK8FlZi7LxDahilSI2Y/iGFqfmR7zqUB5JlislDftoa1h1YDGlPI
	 LnbO/sZZwDAwfCXzg2bU4ReEKO9jqhsU3WStwpzRN8OCtGAkN6RQn5p1P+7Rh6rsVx
	 xJBwaBzHtG/3EdPc+sLMHEXo+g69kKS673A7+eYak+g9UwRvv4AH9uJb1aGuYBdwBJ
	 Tjv6d1SFy0V6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AA6CC38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166706825436.15523.12960281854687956079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6beb5f27e8a61b1fa9549cf19555f35a4d0e28ff9381fd93309b524a760ded96
Date: Sat, 29 Oct 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667068254
