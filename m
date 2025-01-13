Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFEE240233
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736802954; cv=none; b=qNdCx/1codwf/qMfCfdoHCvPjf8lQ9uvEeWY7+Dxx/+rZChScckQrDhnz0K02i74QkdvPxtRY2NcAnrRH6k59huhpehIRHq7F3Z4eHJTgdqRKxZs0ztTBuPzzCMtBZy/81ItB0WWJGaGiMMLB9JA2vVb4tZGTIOfl7KVKJxVkeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736802954; c=relaxed/simple;
	bh=RK8OjhXIxSd1/uMORz0QmQXv3KmrZhavStQhJNTXsHE=;
	h=To:Subject:From:Message-Id:Date; b=EGS0lZJrrJZHtGmfSNDuOskm+f+gTifCOt9ChdPdzsn1pedQNVQytjhbU5NAk4NUgpCf8YzWIi1Y6sMOPeQ0pe3pHhW1iiaW3Z/bHEG4UjcNOMA5NmmDU3EQz8AWHeP0kVQzhjtKw+DeDW2aT91MSwHyHw3Itusn1isBRN+KxD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMGmg74r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMGmg74r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FE2C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736802953;
	bh=RK8OjhXIxSd1/uMORz0QmQXv3KmrZhavStQhJNTXsHE=;
	h=To:Subject:From:Date:From;
	b=TMGmg74rEPuzVFeMsZurMRpIl6XQDXDMb2t+E1mcCwmk+cdk37rYesow9azqv3/Dw
	 fjtlPrsKmfS1B6rs8gr+S+l0apA5Lk5SQXLktYshNH4MSmobXjMLhLifzze64T/zQQ
	 ZydaNjA8EgLXe+KPFLnH69yfl/CPQu+fGR3+ztK/isONnsHZ+Y/xSfI5F/P0/8O363
	 i9f+dzDzgq7e1IRBloCCkF3wLFSeVF3iE190auOKW9dHabWT+2iYUK/JbCDktU6XUC
	 7QL5/JDMRdC3zyF3RsJYyxJyeWMYQ5FKRHnEpcSA5T0IZ+43OYqiuwiiUbPBiV9xqN
	 ogT8Tq/Teu4Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F928C02183
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173680295358.23719.1221420349962254326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb1f9993b5262bba427bc8e48810debe2c2172056dc8fd7f4290975f025135d
Date: Mon, 13 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736802953
