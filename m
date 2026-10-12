Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F181443C38
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791790834; cv=none; b=QLCa2q0QitOmlIYBOe0hHC/sjPErVB86YIesbQiUKDtU4bQ/FkgfyXusn5cSTWZ3+ZoP+oi+XdhlVlVohrGpnX3hzlvmAwWEoaEyB/AUQlk0wwCPagFq/Z/THrVzi1Lbo6Gzk4DQftvQVCQ+VSqXiGQMuEaT0+KCyiu2H/pOzZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791790834; c=relaxed/simple;
	bh=YkNk+CIxqstlog9q48lCvqxpjWxwF2BW+EfxkabfcxI=;
	h=To:Subject:From:Message-Id:Date; b=Ht2LDaFMldavnlXnvnFUYyHrRgSAtXuIhaqhaHhH6ETiVGyERt3NAKVAp3jtxZzcQI/EarAsOM/G836wxLXjP3/XDt1hPsmoSMkVYmkWNjfpMjcOKTc3XMGOHJxOf2VWO6aQSa5AjAchYNTf/tfdnpsQ7H3Fe5Scvkw2BanTbcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1lP8L5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1lP8L5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0295C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791790833;
	bh=YkNk+CIxqstlog9q48lCvqxpjWxwF2BW+EfxkabfcxI=;
	h=To:Subject:From:Date:From;
	b=t1lP8L5Dj/fzeaoGigON01umMvMY/37oSdBLvOs1a0yUVq9u/MAeV93SrHo9f6jc/
	 gM3guBsRfxM+DiOld18uCrmFaoCH8FecDjxfJOgDV11MiEPopEYCGFszfBdRJ3x+3M
	 S5+HRXoBUojJq1TajSoNX80xv6WjE0/DqEqEcHimgAYxdvf/PkVY8h0kbc7F0y2uEI
	 E7xG8Sr0AUw6ukpDsOdsWVwF1CQsY7Jz8lkCrfMej/EJdn5Pd96jH+Sovx/y9ouf8D
	 8DAm2QmXHPkaO7Rhf2NvH41K6e9I4ZIEjQsOyHdb8bmMCTbCa5FS961875q8gqEzsA
	 W7AJ+e+rPo9zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9D2CA9ED2
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179179083370.14573.7734838906391738298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab1c341356fd2a9198afa84288728ec59df6baf3be7193a4b51fe202233a391
Date: Mon, 12 Oct 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791790833
