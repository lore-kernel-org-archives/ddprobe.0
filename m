Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0A63793AC
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783251514; cv=none; b=KUEQRQ5UNPl3hk2IixtEso97NkgGopIY2geJkr+MbUi0cDhzWVE4Qs5FjKhJvuZ1G6TbnFgaxF1ZFA6ndyXyvzlYlg6cBh4uW1ChW/qh9AzwEK3RBZcDoOCGWWEnKipSUJjNzECEptTGfGXWgQ84CmtiaETQ6acslGVVMsecXss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783251514; c=relaxed/simple;
	bh=kUZzchVpR5dB5DfRwapbR0bZdhdQFFM2UoD2M5/NvTo=;
	h=To:Subject:From:Message-Id:Date; b=A3E6IiV79Y5pddcuE/ZjOfRHDFLCGzOMr888Fkpr9GkJfF8PPd3MZRjSva4DhdChkLhCsQjArg6BEatQ4wOAXZX4mFHwHQ0tsiKk372ZFtVnKVEkVPLNYxkoTUlYofiaIKft2j+2zWOq6D9CX0+nPFpmRB4qqnzhs9sSyiUAWT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dnaia2yU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dnaia2yU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7B5C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783251513;
	bh=kUZzchVpR5dB5DfRwapbR0bZdhdQFFM2UoD2M5/NvTo=;
	h=To:Subject:From:Date:From;
	b=Dnaia2yUybFgygtN+08TZv62OYkUMfKZ2vtmuwv2OiUUL7xprMDbOGCRaj/k3F4Pt
	 PUJ3X9xrHvulVwS2oS1OSmONq5ZXK0iqnqlxVHTievzlXkf1kzF0EZ/Leu8SpAHlRQ
	 C8fLU63HGsmH3VUEpVMTOp+siL0aDKFD/5RVL8KtaZHkj4FH0lARKvAo3cLMfNdBID
	 2FVULdLmX7eQsXkvvA4lTtCSovgc7sCRYrTWZw/UJvcdPUIGvgHKhkbJns9TmHBwAk
	 Oa4tv/jTe35xc2ZVAMLRSzxhvDDzi0MsRmVIliTvVQVflPLaOrG8e8C+Uwd9uH9qF/
	 b8eE2i13TdbYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2A2C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178325151368.4368.595398520981504277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99f4cdf8a8ef65ebe45d16a517187bd8763634e47479fd5ff8512a5875fc77ae
Date: Sun, 05 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783251513
