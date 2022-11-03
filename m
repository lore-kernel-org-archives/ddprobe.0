Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D642F21
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B4ACC433C1
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667473254;
	bh=5Hb8dlzD4CJG8/Y9Bh+GSmCsXKHXM9tlzdgIt1V5OpM=;
	h=To:Subject:From:Date:From;
	b=vIz5siCzLU/O15Fj1/8ikG/Ch0VNw3iTyXhatNF79MLDJBHkOhMP+sL9JR2gMv42j
	 gEmfwgASGA3gkQOjBTs7XckGD5FXe/KARUzu9M2X3kH0ldA2lbizZ13H+YguFZvDiz
	 hRJmRNG8kcRh1E8Fazr0899k++SYfCM7q9p6jqxlmKds4OxJWn7x6AkZcrkZ0SfRQn
	 KAQEiYp5lSzXmbhwvKdZ1PoIkXHd2KesaYvsb/m/2RNeL70wj58GYbpAE8c323uVdc
	 dkDpUNYVjcc3SkPISNpuI6kgTgyUVXKN5GAAZXEc+gtoj7IZgSwLlj0QVrVrtH+Sw9
	 lKY5hUUJ0YEfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8158FC433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166747325451.10335.13534407651809853424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb1cd00f68f05cbba9fc3af26cf89a84566dc9dc8bc3761a1cfd753b5c06650
Date: Thu, 03 Nov 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667473254
