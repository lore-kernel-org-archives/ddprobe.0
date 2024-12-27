Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2615813B592
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735282554; cv=none; b=g2hNTcv/JiiR1gvUfN1wsNlAPJMNW7v8VbMTdXLhTtlnpJUUgdjcWmbEKAsfXyVopcc33s1lY7zvPDQE4McnNO8N/gTI6P5CQRct6RZahnLE56UU3mwv6GgLukiy5+7Idv7TKnM5ngUjEJtDqmT/noXGbVba3hegmn4xrOR9OUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735282554; c=relaxed/simple;
	bh=1PVD1JDWLWNRhS0j4j9A+QRSIs/3IK4lKIK7gyZm6nE=;
	h=To:Subject:From:Message-Id:Date; b=DgTKIRo7qX1LdaeqBA/KG765jhdIaCmUWvvBvIAYKRiA4+mKpJ9HXkiI0YDs5TV/HuJgZP9A6HQ1pSc0Woexdc+qQDSX5a3CBpW2FRF6hDLtvyy9QViQF2x9j5IGTbDYrV+HuBLlP7eiM08dnOZfxXfJs6htYkPPLllLAVCJ4U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdpJA9EQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdpJA9EQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A456EC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735282553;
	bh=1PVD1JDWLWNRhS0j4j9A+QRSIs/3IK4lKIK7gyZm6nE=;
	h=To:Subject:From:Date:From;
	b=AdpJA9EQ/csK2dSXoUdI25b3PJI1kt0gfkoLAUv/9IpKFUk5PmrNYjTiDhNUKrmgP
	 qVo2AdBRG6eouBI0SmfYEm3R40vjrSXrF4H8S3vgsFC9/TS0leV5GWKyvy0xX7CPcb
	 mf4lwm8nKHeZ41fGisIm2iD27e8fbBiu3+yDg5fc0OcSbjgBXfzJWGyAZmTf7S4gFh
	 gZgXeKCCiSzLtoU/4+Df6FEiirVod8VLRKhfZAY4I2+GUv1vv0asROCZdE/XRqud3D
	 p1dxMufI945+oqKgfjp0oNEzk5B+ftWo3N6933tXMKYtxOnozzcTBvCOfPcu3loH5o
	 a6LEHyIBo3WSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9304AE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173528255359.1889.5696004661643467028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 074c6df677d4d6e337415651ddc089734c6b9ff73113556fe4912f6981808bb8
Date: Fri, 27 Dec 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735282553
