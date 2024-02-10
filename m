Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78C531758
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707565697; cv=none; b=LNpy2RNCcgtbI4sWlmZqcDi/33fvytkmc8BURjYnXkRN1C4F5R5t6ytD+sedwd9S5FGgLDYjIqocz35lACN3Uo0Wby7qQH5kmCzKYV0iEXDjvoFsqp1RX7lrAeR1ECU6JzTROdA+2lRlIyBMzBKZhSoQT5JchPDkXHDmeOIxo48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707565697; c=relaxed/simple;
	bh=m/UpUh6BAa6mBv2AEPbiYAJxELaWbXILM+NEnSeqfJM=;
	h=To:Subject:From:Message-Id:Date; b=gYu0GLUKIaTTNkLqwWpY5lGl5+BKBNwVjsiKlNhAgWQTI0rMlI8H0zO49MWeoe5afLUlnbKTtjNVstLpT50kaDJlxT5XvZkm798GoTiRO7/qp/J04SKvSGxELRUAO7pE47wXW7pK4Wx3QZwyH9OacOBo/LBQ9oXMBzEue4NZgqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6qQYPYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6qQYPYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AB28C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707565696;
	bh=m/UpUh6BAa6mBv2AEPbiYAJxELaWbXILM+NEnSeqfJM=;
	h=To:Subject:From:Date:From;
	b=o6qQYPYFA+7BjUOmw1gp4TWy887fnK5kmK/Np6mDbtXs3v7GNtTGTfVZ71Orbrnzw
	 vttSthx9ou4UB2i7PVx7oMR6m3k3bFN1iCefR0K7zhuAqYQCEMoHCWDxSWyCRVBWam
	 viUku8Yc7Y/vT6aqvvFP0uAC6/Lwq9aTPm4gY0fc4iSPG6AEypOYrrFUl08vrMe28W
	 AJjVMb2G0pyKvnYT4jh8rptfh3odTnghtAcwXdcFEhFdT3lePdhPt2H0S+isn9X6YA
	 rCsgOFqjoy1u7z5zair2l7BkGjc868yQ7ZiW64iaN4OpOJneypSFm+FRk3M+jWbrcM
	 rcPy/AhurB2mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FACDC48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170756569638.13196.11418572238489098105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0103795525e705f7748b24b1809547592bd997614635624a99d9d009c5b0752
Date: Sat, 10 Feb 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707565696
