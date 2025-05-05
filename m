Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BE31922F5
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746464996; cv=none; b=K0BT4FMkr5mhRNX9SHnuTkqUAqcGFEYV+nizZuzdRoS4kDIgMHabRhcQKbuKq7+/3jyGgX6Gx/G/9vlDFUALpPqz+ZeC+Zsg8+m2D/CwoV917lj3gwJlh1nxiuFxnB8xmqtqcnsKGtvoq6NNOoEZSzZ4KNEsx8LfD+JglQc/MSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746464996; c=relaxed/simple;
	bh=ofh62Tq0uVv+G4B6EHrMtzl7vSyxPg7EyubEWla/UxE=;
	h=To:Subject:From:Message-Id:Date; b=gx2AK2vprIu1clBds3KJuEGsYH+o0pACy907FGgGjIlFgK3HkKSv7i2Bs53eAaKTdXV5E2Zr4Q8UuRXOWqYOmran8zJUd4XFlNjjfgNgl3q2EfNtR205VR9LiaFaI0f6lturI7bnHpvIcOyC6kzJxuvf8A28pJrRcuryBd0tVWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVmbmk6b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVmbmk6b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A340AC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746464993;
	bh=ofh62Tq0uVv+G4B6EHrMtzl7vSyxPg7EyubEWla/UxE=;
	h=To:Subject:From:Date:From;
	b=gVmbmk6bWq7OdoAgxMHLxXMDcUDxlXCvtZ05i1Q4HO1X8/f0ZLI/nW9btYwiy+fMl
	 hEy1unqSri1tNurD9aWge+eoxOd7V/DMGZJWPASh/v2XO1urZULTKGZb9lPPla53RW
	 Oc4pBh22GuekYCCbyvQ3C1fXuT+BbB3XVHBm3SI0sfJY7UEZdClkmeuAWj8d/yhMBB
	 RxYsSW1z6w+VQRVfw/r1C0cc6AgqBDndk5uP3EzoYUaReGT/1zo0UwjP/IhEipsy6S
	 GnOVno9d9WjX7q74VyEmI878UTEI/p+ErjRqMSSuklT8xy7hnKV0jYFy5Y7rN5sVAn
	 yO+hUROg6N+hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E43FC3ABBC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174646499357.25030.7442696095326892799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25785a3af77c482589e1eff4fee4767bd37fc8e7d76f15840e73599c2778145e
Date: Mon, 05 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746464993
