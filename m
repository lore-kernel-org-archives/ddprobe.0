Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304F71D6BB
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767360834; cv=none; b=I4/puGiYJMabk/hwe5/TbSvSfqZ4TPj5t+lDzvHFFUhAxcQ+3/Ejb/BySL7AQigv4im7rjLDdCrA40+vvpkzebop50EmaYJr2R3bDAf6alGdYbw8gsYEGgb4kKeYva7hx5kGystLUrimCcQX1vlUtmb4Z1kY3A8BJTiL5sGGayQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767360834; c=relaxed/simple;
	bh=nc+/YnkTLAv1iaZk6CGDoRXXnf0Kal+1mmixB/mLibI=;
	h=To:Subject:From:Message-Id:Date; b=V2bJ7Gn+9VUacFUcU6zHdgs2KRF0bK6nJC5XYyCAGWXU4IDxQQAoTe0Qrrx4xzvOGLQPKTHDnI60uI9yOmclApcII8Iu089zbYzTT8vUhmSXFJjMX0QVcsxZGAz3Am8MlNXAMMdfJbLtDU9DcjJXaoi8C+fgqDwmqmKwdHRJ5tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5DtHWbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5DtHWbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47B8C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767360833;
	bh=nc+/YnkTLAv1iaZk6CGDoRXXnf0Kal+1mmixB/mLibI=;
	h=To:Subject:From:Date:From;
	b=U5DtHWbtya0W0Px0YxprLSW5uwq+IVjqtuikvQnOGJr6+1iNCJEtADMcy+zycAmCB
	 RcjczfX/IvZZVAhBm6/OZFOxNOws6xnkqh0ZuiQa/qk3AK2Jc4+Q60WqZHLYTsFtSp
	 R1hx1OyLocjnJCdfeTdXTywN4dNQIsZnl2AcmfDMMdsBQoXKJY/xKumHKQRYF/3ZuQ
	 ZaELD6JJbvDJrZIAQL9L7mjqP2uXl+6n5azrKxmQRnKNvU8a3ftLP7Jmj9lQCpS+bN
	 8bgb66tySIDnQduWrKVMsZE7gKkzvlPK8iIAd2/H+YxhDGUlto1L7bN0efHhTq9GwW
	 fjgK/9YUBk/sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BC7FA3748
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176736083358.31861.7765239462210704901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 606658b26d164c9325ac0812b89e8dc5ab9030f5efe09078a0cbd269da20d465
Date: Fri, 02 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767360833
