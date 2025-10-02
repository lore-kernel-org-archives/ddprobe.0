Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4878A927
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759449593; cv=none; b=p0nLxnJl2Uf4e+WqPl8Tgw4s4OaRJ7/lfk5gvA8dl91SnPfIgzJzOpa7wqpQEwHIFdQIyZy23FjYCFGmH9z+PW+M8tRZzMjE9qjkQBSyseLs6F8+qh67CaSx6yJ+WZXGgqlE+AY4EfjynMchzjEBoc4NHqOcmBr3DGhBsDbgLKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759449593; c=relaxed/simple;
	bh=YVMHD2fP43A+ECKU7/60mIz3IVf/90O85xIW9hXBw7g=;
	h=To:Subject:From:Message-Id:Date; b=GmHSzHR3EdGR4NgcwCXLNwbIULXi90DIimu3+nVaEm37cpxSqKs1NPFfFQGaS8tZ0V3ZGQH9qbG2GnWbMHwOxJ4nR4nD55F5VCxCoekCVlAd58gaAnDqVVKR6dQp84GMi511YjEOAzZRwAzGGyoUQJzGyzjnOr3WKLAgMgmBxlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWEuPKiM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWEuPKiM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA868C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759449593;
	bh=YVMHD2fP43A+ECKU7/60mIz3IVf/90O85xIW9hXBw7g=;
	h=To:Subject:From:Date:From;
	b=NWEuPKiMA1rmA3QxP9e2nzGL2aVqaQvX3XzHWGBsdKKn8wQn6mjIQRoedUq+Ar03m
	 1EUHYdHUnUn/Cob9xjMo8OqTYbGtOfSDu3eh5SQOOm+eMHyVSooAaFQWQb3MFdFbiM
	 VMqINgU38ynCepo6LSzXQvY+qpvd3RQMy/WWDFy/4BJl0gsLZ1+uskIeWzGEOv/HmD
	 eZcOM2HWsFIpjvWsyiJP1UwSdWQYVYEzt39JtGIG5xHlpONuY6jt5RndRSnphVFeOJ
	 iM95uARbqDSRgk4Jb+aiexZsfTrnxTvpKl0F0m7TB+yAZchG27l9DgRmNH9z+uFea/
	 x4hl8yOYoEc6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982E0CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175944959357.1229.6749673179841998438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60dcbe6de4e9488f34d5ca6bdd449e922fffc954ca698303754dd7c605eba55e
Date: Thu, 02 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759449593
