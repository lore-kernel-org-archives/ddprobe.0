Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B45830E83F
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787486434; cv=none; b=TuZNRquFC+hVEjXk8qzhi3ENMoZMPs+pAX/Cwdi4YV/bbezi5IyK+q9LX9DXUKxnm8rNcvBJNYf4CnnsJ7SO/ppUmiennEnk3Lxq8cXael5UOBVCHjFRQZP/JZlKXmf/N3c8Bes8ukm8+61CVQ4PMUU/4DdVlrp5QZGBJgWJx8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787486434; c=relaxed/simple;
	bh=x2XDvezVsA4GL6L9y0L0w+dGGvVAtsMASI/Bekconb0=;
	h=To:Subject:From:Message-Id:Date; b=VqEjK4BoNARXU6HRDsu9rjKFnYPdI6HzRGEdWZfEhuvKsDpV/wKxk3ZG0lyHyGqzNDfmhkF1sQIUoSpb+1+N2VD/OqECRiwCic3gOhQnVMVAUujrpYgrtxEjP4eg2zHMhQQXUqfaO/p8A1OvoDU0dY9g72wzOoF60Ir18YCybiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NcjdzBZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NcjdzBZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3BDC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787486433;
	bh=x2XDvezVsA4GL6L9y0L0w+dGGvVAtsMASI/Bekconb0=;
	h=To:Subject:From:Date:From;
	b=NcjdzBZG3zOBa9CHdmYEAjWxaiZZbOmvbiDsFqHEtt0Wjcvl+ub7WjATZK7U/OVip
	 Zz9zNXMVX1cTO/GIckiGrQAVDbt3qh/1Yw0awhIgY/HKMpw15HxAsl+WJlEm77GUEO
	 GcBSKkelt7m0PCO/WHz89gPHBLSSl8yU0eEJUDqGwH4dFsXItREs/wC0AaFJl5f7hc
	 xS0OmGEKKR5i5w+UHdEsdzoJuK77B4m3nalY42xeNF+fYHmJFOYUuG5pU4KuQRhHgl
	 COPVfKDVJuHc+JEmSHEUPijQInM7b1DgpF230HbaZqsc27Jj10Eun7U7FmxwPllhO/
	 3Y2sO2kBKXp3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBFFC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178748643368.19968.13762222309252745479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cbf7c9bf5aa3ad9b89a86158d134857b8fefe616e43046d060d0da693fbf26b
Date: Sun, 23 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787486433
