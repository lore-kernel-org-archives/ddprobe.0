Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6554F23D1
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 14:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1866EC433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 14:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677939426;
	bh=1SGhH2IjL4fWDFKJdn3vu0nE3uA0rTgHaTCV4QOiPAE=;
	h=To:Subject:From:Date:From;
	b=KLly3Un14th352zX5r0ytQ/gruuVYC1JMC3sAO5zON4TYX0URAzDxDk+u7B+dCnuZ
	 HrsoMRNW4Zloc7FM69sr9+4QEPC+qCczswRwPVlDtrHC5iz+HsEVe2BJEbZy5/dFa+
	 UqZMrZ1NVdPeYPdn3VN76TDVE+lwYAGshFHAwRdsKs6XuWQ6Kk2EHHCYtWLuVBr65b
	 1jdemlpHVGaZoHXJhGVyYeh8QSL4ejwFizlOtMn0J0WaMDK9m1nhUR6Mcqf0N8lLIW
	 7jL1UldXjpEJpKMpVlssG3hEKgB9tJ52j1GWuf0D5RL7OdeXCOUWWEkmPwp6Z7/SGB
	 5zOJvVmoRg95w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E095EC64EC4
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 14:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167793942587.3928.12270173861518156271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10288dddc198eb344687985e1f6c2c504be9d3ce4ecc5073d849f1c034353a26
Date: Sat, 04 Mar 2023 14:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677939425
