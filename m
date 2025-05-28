Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E6152F99
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748408394; cv=none; b=eG5/ox+BAHuOL9MH6T6cTKPyP/53HA5mGctPpojiUyIhek1hMfi7AzG6JsgJguu4roQ8wXoDIM3YEot1uj9b8tPDJv290uoAsxDJz5/sjUUZAHLMx9uS3pywspWxKqXznCJvgPYMyZ2xOCXXD3HIiGWErpbcZCHDFdMwVlifyto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748408394; c=relaxed/simple;
	bh=x848haUHcnERJ7ZBzYdrRv7t/DfZoQdVL98QdklA+Aw=;
	h=To:Subject:From:Message-Id:Date; b=N2aVZoXLivpkDT38wPva5UcREBRyymOOfBl6bChlEHzFI+5G7oqVoiI6wihSVzMENyZ3LGP3jefdtrQk1QZCUFsb5ZY1r1LValqUz1YQHLyq35MdoN9CpcHaDP+YznniXYBrKx1ssHZFGeupLvS60k6L7ZmQ5L9tQ0rSSBOFUTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mF9t+Fdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mF9t+Fdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F54C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748408393;
	bh=x848haUHcnERJ7ZBzYdrRv7t/DfZoQdVL98QdklA+Aw=;
	h=To:Subject:From:Date:From;
	b=mF9t+FddIMnsHDqLg1b9snshTy/UJUg9qgU/jE23732wf+dVSjMPUYmZyqnhwnZam
	 T0sFgv0zmwup5hCeUbixrNw0TofeBhctCl7vztYTFjyR1kIlf8Yzn0boGP7jzsu+m1
	 QfDE3U7PNODDeB0xwxCfQDHN7YAXoTvwKLPS7lLsn8zeWlzAsdJ5vN6qAMC8VcbL5/
	 o94/CYkjWz4M2Sbd+xumC1LitiXQWWOdCfdhwiBg29J0SguIrG4y3Vs2WqqtlOBCn2
	 8azUtxPrlfm10xUr8JHI+wtDzW/bPM21+AZRP72yuwV/Yc9ScvhNXUgumEJk3vxp2V
	 BSa3UKkvoE8kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B25C5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174840839358.24736.12024810644907459048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a50b5c73a5780b192ba1261d5c6a89acc5f079d47d13b82805b5a8ba64761d
Date: Wed, 28 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748408393
