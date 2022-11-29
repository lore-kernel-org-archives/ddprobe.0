Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3E057E0
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B469C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669712454;
	bh=zsmZ1VdtbHP3Khe9d7HONJIEYpPAqmVz2v7ZeYIKQ5w=;
	h=To:Subject:From:Date:From;
	b=hefTOWV9d0LfcSEk269+fZvJt2S0AzfJrMqDO1Oy/viPngwlXJewRYztHrKTn1E3v
	 P9y6fLYshtgK2iOgaH5ehCvxtI2BhyYgB+eeNMuODXkQ2Tppj5HKQ/A1B3c5yXakc5
	 bGbEolMUt4n0mT+ktXylV9hcpJL9GKy3TReaMgGnP7BFnokY51kpLAlT5p6jt9j6sL
	 g0PmIaZl2//Qj8kuichLsTDXvkSuw5czOnyOGVrzXw9rfHIHbgoRDfTj1sTVDqtUHv
	 rXnmRC89FJjpEFNkwvB0XzZjb79I1/t6/EfTnWztmNlXJj+B3/a49GAjVi8TAbnwTW
	 buIROqDDPug5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52CF4C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166971245433.14186.1919692717020385320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4061714b92658bc46a8fc83e75953f6aebe3daecbc3d8c11d96abe8696b77d2b
Date: Tue, 29 Nov 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669712454
