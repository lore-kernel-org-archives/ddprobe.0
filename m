Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2765561FDF
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734409554; cv=none; b=WT+v9KwpJWqZ3eI/XE2iaS0MVriNb9uZdenyUcjaVuzV9eKMetmXNfyvH3788CKtj9xHrTWHh25uHeeKf17VlHNuuu51qM8aCgUtUxlUxkMh20Iq72NRK6OSouSvsaKBSZsP/Zp65Qhu3pJ9tlSAPLfDMn+wcv7ruHljbMvr/lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734409554; c=relaxed/simple;
	bh=ftMiSifqsyMzuQvdh0Gf8ut7FwC/tx1pX8JqUsrKbSE=;
	h=To:Subject:From:Message-Id:Date; b=TvgFeQOpx4AOf3m/5du62TXMHABF2q6t4W52zNF2XGonYP6qRxRmc/9IBBKrOS6M2wUlsfHiF0WBBY73ZyfbF5iNZ7FNUkkslxux8EtG9zJnZ4iu6YZ+sZdMyaS2eytykSAvldP7VR1AEY538821VdC3zt4lTfHJ4WOgyWbDvNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oF+6mVyb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oF+6mVyb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08DFC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734409553;
	bh=ftMiSifqsyMzuQvdh0Gf8ut7FwC/tx1pX8JqUsrKbSE=;
	h=To:Subject:From:Date:From;
	b=oF+6mVybeOO7/7I8+LNbG2eUflIlnRubd/lnEXFHPvj2lw2bAJZV5Z2Llj7FfuX8I
	 O6ljVo9orHZUjdS53EqqMaCqhcvgdCYY07m8sC+KGCN79nJMrwMGd51Ndq3rgfvRG6
	 FMA3qRt1C0Yd0lAmctVf15F1hz9va8BQv0RXqbzQdKH/kC5Rix1xg/SCcwCDcaTBlw
	 nuR+Ufjo4XYJp1tH0qDdlMr3+8e9+aF8jbPRHZE/2x2uQ9hO4mVYx1Dh3M0JV+tfqB
	 sr0LMhwvucnu1SDAPKDRMoIIxj8Ehc33tatGnJD5uHSmuHghQtpfPDuOgZvtkOj2sM
	 N6YVvRXAw8vdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A53EE7716A
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173440955361.3578.13858311847564549647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dc55653f33b13cd51abc6b6890a8e9f54f17f72a82669a17822cfeb8567c429
Date: Tue, 17 Dec 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734409553
