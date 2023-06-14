Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533247F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 06:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D34C433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 06:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686725828;
	bh=Dx5OW4SH1laWpPIBajk0XawpK+hLpVqfPs3Txh+tPAU=;
	h=To:Subject:From:Date:From;
	b=CUMg9pz+IQz7CpWO2a8y4Leo25Ach9iTh5VcpCLBgZjvk4GXNJ7Q8Zx9Oyhwdk85u
	 ggHsDNt5LMKfo+OzdQ1qR5mOMOiKbUDnFLX8x3ZtkhCXGjRXuSTVSKnRwzBFsyntH2
	 ZyDfwz8DI33X7Myo3HKXcJQy2V+hxpAB587X87vdakKrnnyobl/+41WAjGhxYA5q/B
	 0ohdWe2TIeU0JV2gsZBj1X9UQWiQ1XyWEHlthH0fldxoMHa9rN/mdehgVOe04StfrD
	 /80pbhgB1CzurCX0+hjhw8X7eLbeA3FpxP6geNitM6AZFBLvPWQB1QBugDLilv1/BA
	 87H/mQqLCf0AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78F7EB64DB
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 06:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168672582867.7584.5422742096549373958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eecf208cf31c73f7d59faa945fbcaa8b1be52e59846d8f3e4e186f9b5dd6da9
Date: Wed, 14 Jun 2023 06:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686725828
