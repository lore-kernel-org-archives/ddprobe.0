Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD9D7C
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA11C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670189454;
	bh=jOJOtTIhbjrVUgt60xu8vjyNAVDws0fY8NWL61O66qw=;
	h=To:Subject:From:Date:From;
	b=fsaaz8ZYWgKNsEFbCFLH3mmklYFus/YwidKhAnxE2pmkLn7sL7ybZAr6DCZ9rYTiy
	 vxLXo4F7dFzgo0XzSaFPuBHY3nCBgiBhDUVkf+YmX+/stzvqgIah4QjjV/3EbZF3Yr
	 cBJ8kC0ctlX6S7wVGk1jJ8X2xus7IpZbtNYQu54581kupgAXC+ZoekmzbmEO96q3jN
	 zisE/C8R+CvGdqrCJfMD+PdgjzYkq9wBB6vV/Nx1cBLqoXShkfvcsHBPRIgBfR9SmV
	 esOi1YBzQxMoX7Nq1VQehTaDYWnKqJLofxeEI40KmjcDe/2O7HeSQnmEgLVAk2VZtB
	 c2ya9WkXMMphg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BCA2C4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167018945435.27706.11957765646390349004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b2073bcc90ce8fa6eaf6e898cdaf8f7624375f177e2eee8ccc0e2b495b9c48
Date: Sun, 04 Dec 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670189454
