Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1529261B96
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770188633; cv=none; b=noEk4hC0DxHtXXOGV5PmzFr4lKYtITjjJ6UFWLCGTCAi10XpiGxzGU7+s2HpR+FhdirsNG6h5gxD0VFlk7bJ3gdQKVpSrHdp4Ag4GrIyiM+5K3mwU3CnPZ4ckfxiToNXbLpJ1kM1ZwPDBT6hJIgiGNBf9sUf6rRSrsE0BufvpCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770188633; c=relaxed/simple;
	bh=4kK1l7F9GPnGDKkIGow2uw2/gx6OJ3h8eL7SSnXgkug=;
	h=To:Subject:From:Message-Id:Date; b=i8vdG9di3CbhK+DF8THjgjyDbF00tYZrMGRipCR0dNfOWoWCETE/zcNOeWuw5vSo5WTcbu6VfE5I1jtYJ1FbY75W/23OWz+fil8ftPxl78CynFAdttoIYNkpmxZvj7WT2lO2keToHkE7oLCYdlO3YKoS2/Ft7CWUmCclX/tjNZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pm2yQmeS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pm2yQmeS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C85C19425
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770188633;
	bh=4kK1l7F9GPnGDKkIGow2uw2/gx6OJ3h8eL7SSnXgkug=;
	h=To:Subject:From:Date:From;
	b=Pm2yQmeSZzDez5JiGDCx+Rm2D9hj+D6QhGD02HKQhpzXp1M3+XGw/NOx+Sb53CnQt
	 PNq35tW5lNzH1e4dwhoZdwCSOS2NMqtEdvNQzIDcdeRUGcCkNCE3BsGdu0dU1XbpiO
	 0YR6E+tld4FiqZhPAGgdct9+nN1p+MBO/eFcMsZycmVj/2USTqq5uKhR3o0b4ImhWD
	 loqVM7Q96zuwrG/+Js0P0BS6fV9/03dkhWXJeM+ute14htI3qDtYNHxj6rHq+F3LPV
	 HrSZEQGrzFWYkJ6q2U+i8fGXahLJiQbm1aBEYKo6R6pHSgRb/4c/GP6PM+4iXombd2
	 YWA9hxuv2otFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E43E83EE0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177018863361.13408.4306679587949286350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d0b88d92bac5e265de3cfc08bae96f7ee4e5c87445bdc14bfc317548ab0544
Date: Wed, 04 Feb 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770188633
