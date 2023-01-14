Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD28BA41
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E757C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673725287;
	bh=CCGUFMITqMzypJU76BuznsOfqZ6LkWJhsqZHgJ1nGA8=;
	h=To:Subject:From:Date:From;
	b=QgHsnv1p8m/1Kec56/9ibn81dORU94fcIGJdyCkd4iC5KH+Ml4yxeCS10oYC3BNT/
	 KewvKOHbP5MfIXvqEhI68Soh5/+Fbia4z1d8pNv+7/G6yUY5e6kZtowbiYickD/d59
	 rcplJLETMJa5Do+VBV8H20Ckz1rZx5go6iZV/HG0jR+hlt7GSjf/5QOzNGw4XaOSym
	 km5jkbENrDgBV7ePWHtRJ/s1/R+g+nuYKcewdbVCBJyiXULeyQuDfKdk1kL7HPSBsx
	 SuJdS5dgPfTTvZpXe6ksY3gvM/XnNf9qSxIPQM9Lsht5070EMg6jvs92PaFK4tzqZW
	 u8zG0mGWCGIzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77CD6C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167372528746.21730.12072214816292568077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144fb9dbbf351818008c27af9d4a8541404bc4737b0c80dbad43e87474ff4d24
Date: Sat, 14 Jan 2023 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673725287
