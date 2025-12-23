Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1123A57C9F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766457234; cv=none; b=LTV4RnrVl5t86l4/qmY4z3Cs85kvdE8k8eAho1r4hYErjw4omh82AZO1CgvAnfwhBZfykmxWdo5Zb7SxO1oGFPUUIx+Rwm0k1WBRPtdnkaA6lucYi0Spf2OxcdNtIi0nUyVy3GhogJUe7qmjO3BVIai0pVRsHX6Qi713Y6CQ2N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766457234; c=relaxed/simple;
	bh=xEwd284ScVMicMFaGsu2rKlD58saWW3QLEUB5uNAUvw=;
	h=To:Subject:From:Message-Id:Date; b=Ya/uDiAQmQC3wPyhdBtQ3MKnd9H9C71GTZasWZD91+PELkRBeLUv9tZTqY36+evbBwAgjg2XdC1kt4ggvxyRj3ceJIbRn7yjIWQI84S58meknPtNGTp/0vvKGWnvrBNPurugBwuTfkd7eFOeU1J4cF+8O0M6B1oG5AEWljHk2gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cf9/I/u7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cf9/I/u7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE0EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766457233;
	bh=xEwd284ScVMicMFaGsu2rKlD58saWW3QLEUB5uNAUvw=;
	h=To:Subject:From:Date:From;
	b=Cf9/I/u7p0C8VGduLEoQ1riF9JQuGOZiGzf+vIjXmZ32XLxtb7dA5IFPxAVbE7O7Z
	 v1KkrHGAetofY6oZd33Whd87LAZWztuZkbdZZHnr/5mJAaxmhjH3nUSrPpCQ0gnCCl
	 APJIxiB86LFk+V6gNdlUtfxlDEwwzg133wxPXYHuU06P6USKwYydyYIx1+mS9hS9Uu
	 zrnyBCCJYmWsFTSRe2717lLkaFGYVFC7vNd+2Zw8T5HmkRgx3ms/I+NeIaqM8hvubG
	 3vdtPOijZVfGdKEQab/j29KntSQZaUeOe/O3JcchhbmCxJxPoY96LW71Hp2Rt1RzYV
	 umVwAO5fq8ghQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F17AE6B26B
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176645723357.7864.10633100451427444822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa649db32439c5429a5540b9187d6a1effd602a40eed55d7d638a55ba51ded25
Date: Tue, 23 Dec 2025 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766457233
