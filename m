Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3D12753FC
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 13:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739627334; cv=none; b=rN1E77FN2sUyaGURcJuK05+9iFuAv70cMCYcH+g6nRiuK8kNRFsYHS6NzZ4nNuTfBn5fQ3SwrkWxEjpgCwj3QyMhwaafjCYA4kFcDY319rQtmIWTwMF6yJZArh8VXpeZuFTwYlcquSKo9WHd+qxiPE2fOk1Ryn/oyoassq7U/yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739627334; c=relaxed/simple;
	bh=6CRMRxvbEY5wBJ+zAA1DdCFE1xZVWaGgOXTfRkt3z0I=;
	h=To:Subject:From:Message-Id:Date; b=YBfPzvBSZFjIAXm3ff4XwH1w+mi4GuLm3F/IkmLxG/ozCg1w8tsVChJuQB1wyjQOd3T8lZc+KzI6R8I0T+5Z+5QWBtmiFwJ1wu02tKgLv60ubIea3n3fou7auWXFRUwcZVUAnW04tWAAG3ml1+GoZk6Np0n3kL0tAixu6+UGR4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L04F5r35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L04F5r35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A69C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 13:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739627333;
	bh=6CRMRxvbEY5wBJ+zAA1DdCFE1xZVWaGgOXTfRkt3z0I=;
	h=To:Subject:From:Date:From;
	b=L04F5r35FX7iYb/auOMDUWdky+6rs/FkTuS0sS8TMvFZEX2yq1Wi4cCvD+OEyjwjC
	 ufMLrF0CqrnPjBN1OQ45ub79X4D4aBozPVtQJoDTVmgSRhQjYWWauggZIh6KoSCYUU
	 WrvUjF3/xI0ZA2JhAEdC1AoCFPOjiuwd1lK6s5N9AYo45Z5Erp2EMMQ5lmYp/qjarR
	 Cvvoo8DCvmPahhkR4fwtBuwk8D4Olj9cYwRQylMO6kAMMz921RuxC3/DnnOM4yQtID
	 uU2rMhfvhYAD8DEo75wKFm+OgIkaYK1mh3XlQaOBmJS7fJ2XQ4d1xYtYvhBSs53Ml8
	 Lhbcvo7b5tHHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F145C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 13:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173962733364.7805.17110562049535200786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ecabdd23c3f67c5696c90325668acaa30a0952f28ad487ed0409942af71a45e
Date: Sat, 15 Feb 2025 13:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739627333
