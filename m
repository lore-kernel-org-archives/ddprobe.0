Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C45A23
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 02:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719888323; cv=none; b=WY7Z86mG7jNgpzfIJeMyBCpmGAt0gwNkUZJEwEk+O9/9KW9yVM+kFrAVCn+PwNmHOXoS+bvn8BV7UO+MA59dd7XiMKPOdxaYtT2pOao/7+a7GqPWeU9aaCEeDdUG4RBfI9QwVXJFiSdrbm5jvqeqdZWM0b7AZfbv9AKL/j0nAjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719888323; c=relaxed/simple;
	bh=H7FQU6pxkjJSxhuyXXZ4/ec7q5wrqN2B5jsMGTRf3Jc=;
	h=To:Subject:From:Message-Id:Date; b=DA233W7IBrW6k/WTdXVoxPzITLDNLDY5omAXx0iAFfSq5KuU8NdC5ivxiOmM6fonG0EbXJKz6poBw3efNXP+YMSAAJCyb90IJ6blhgejR7PEzZxuEn0lc7lxfEJh/gTx49xqDYkDAv6pYd0nJ6KRHP5NGOST3Ui6TMo7jsQ4Yrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LP+qCMic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LP+qCMic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E17F2C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 02:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719888322;
	bh=H7FQU6pxkjJSxhuyXXZ4/ec7q5wrqN2B5jsMGTRf3Jc=;
	h=To:Subject:From:Date:From;
	b=LP+qCMicRQy1GSbrQXKQEvlU7MC7qzpFXzKCPIX86Zb1OEoa8+oroF3h/KFIEta60
	 eW8b08JbWR1L9UONF2thd1AgWu4IZA6eFlbV+uvasGFtIk/VmZ9VLBsUBpukVI336J
	 bu1VBkbrR90jZ8hkKuCc8r2bMzEGlxWakT5baYW6BbPychPpYoASoY1xJb7tqrvtnz
	 Sz6LThq0HtimYHue3YRuVon3SpWhfK0GYjbConPnlvIWZfJ3qo+gfFUcYDTyZ28BCY
	 Isw2fnqo7MnQbF1MQxcpjxduyAg06ULtetmXLZ+vwYEueLMIAbxD/ZkrQH9nfFTZfI
	 AmMaAcFPrxndA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE4DFC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 02:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171988832279.25431.12524571345250796063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257e7aff74557607790fe254be41c89377977822ac1c7725c6ec716f46c52187
Date: Tue, 02 Jul 2024 02:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719888322
