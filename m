Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5108717CB
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 01:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+Y0CNUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C623FC433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 01:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697506028;
	bh=cwAhTlS5xnDUD9amtoIhd2viq3PI9EfLmw3Du+Pxx9Q=;
	h=To:Subject:From:Date:From;
	b=D+Y0CNUKBaSWQ/YAu11uf5P6pgCyWmPTXaX1zJOnVVP3ePIlRQan5x5EHjAhkrJNG
	 qBPvqjB6ky41FV2H5OlEEnByGucMkKKNlAoOgpavSv9ZHZzo5ybyywkO6vnubogFL7
	 C9dW11zFxStpkgWj8WgMaIoUc6WFtrKWRvZp82cNGUbv7XstS9/2B796LmAmlrhobW
	 eW6x8UJQAhHug7aOT/K/FU9p+WBSMl5itgBrrKrl3JyjhQYkmrCaqkNcTrP485joEf
	 PsO2WYCrspVNA94Sss2OXlLUBT2nvRwoP3/fVuc0BflidY8Vl+7AzWboCE3IEed2pm
	 Cj3lvKD71Slww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6911CDB465
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 01:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169750602866.9871.1502604920910075430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 655145be0c4af048c6349abf682da19f238f2b42898072131def0b7b413ef133
Date: Tue, 17 Oct 2023 01:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697506028
