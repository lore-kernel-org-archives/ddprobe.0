Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF651922F4
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748450995; cv=none; b=ljbNOEeWJpZIbfnOhLI6pn5W7YVIDtKWvH6Y7t5/k1P0dggpmzLMJH3m0Ncp+EF0blWMhC9rueu95YYSjTu6/D6OeaOlHSDzM3WO5qUij+h7hAj/rtoO/QJqQrEWee9npb/JO2LZq6neaGEHVZ/sEw7/I2etH42jBaHSKTsvmIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748450995; c=relaxed/simple;
	bh=qf7yJ1MbdViErzYcIf71I2ypvvrDlJQdbG060xZtZLE=;
	h=To:Subject:From:Message-Id:Date; b=hDwLiT+C1Df+glqsnJO6HYAOF2wHppyCyBoXLFy5e1ZCugNOVbT2Pr0bdRQv9+3K5rggBKSiwRBMjPLZ0+J9I5iMgTz19uHHfEoAhLenTjclFjNAypD/02QzrkWCLrOfQDa1iyctq6R6jglst0iPk+tzQrNh0Z73jARBxE30/Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3RnLS19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3RnLS19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E74C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748450993;
	bh=qf7yJ1MbdViErzYcIf71I2ypvvrDlJQdbG060xZtZLE=;
	h=To:Subject:From:Date:From;
	b=g3RnLS19b7zmun1gTmM166JDTsb0qq+ZYvslyQK9VuF37ywrpMJA7XdHwgcJUP6ce
	 qVbLrkpdoHTHAY1tPWhAGal74a+g/BH/C0maXVDQvGmuMlAKyJBVGd5W9vZDq5Qvo3
	 eJKDpNzHGwbHoPsVmelKC408xTKy7z/sSxNBrmJIvRSrqEPa/L7eLgEt6SUAEyMKeH
	 IpUJ4XvuEbKLpA1y/KqUTGwS6iGMlKq7fHdZAksCJECflyeGzw+UmKqA6Vj8pZ3FYz
	 osZgSk/iqrL+lbf+vxHBMM8SjHGtRqn7RUeaI1rlMjZZJzm9Qb9mRqHCypMpRmgPFe
	 AW3pv6oW12glQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902ACC5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174845099358.4861.4821068954218052395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db841bbc0d6370418469faa865d593d4596180eeb70b947386bc10f3354f0915
Date: Wed, 28 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748450993
