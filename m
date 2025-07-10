Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529BF26FA59
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752155994; cv=none; b=Z8ylGpd0MWCJpHZoYwtWK8NVhgLsbVHGFsYxAuss8cZAoLBsn4WJW1WaFmK86UHG388LxC/WxX46LnivQhY9UrxoZFC6WVvNVDlUDcvu2UoaR9KOqhWEgerDNzQbU6+0TydeS79U/mXVDi8xqNzAD7Q6qdytjaENF3Wo4rC4QqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752155994; c=relaxed/simple;
	bh=Ec4t6Meatw5tzfUyrJwXy743pZ2bFC1ZyAFb5pAwecU=;
	h=To:Subject:From:Message-Id:Date; b=J61gWyYPWeSTSvTOn9FdXGjIjNMmpyb0+KHrtLccZfGyJ78IAlMJ+C/I+XLPOmXwUi85903Z1s/UyDIIDMEnwGL6PDkRlXsDv5hDkrMclNUmjBNLrIxHbQQEH1Fa3I1uZW0s5g0JNuczw8ZH2uQ5dJaddVnjilkGi7jEs4/jqPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHxuVx0V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHxuVx0V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1358C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752155993;
	bh=Ec4t6Meatw5tzfUyrJwXy743pZ2bFC1ZyAFb5pAwecU=;
	h=To:Subject:From:Date:From;
	b=jHxuVx0VfRSw1zO66LZEbvpHDpTZXYlxFvroR1rI7GpQfbRs3A+dyZ1h0ZAgyeVf8
	 Nw2jRb2LWzwiNVNBJW/Md2S5DuqG5d+M0ZQdJYGVWrTo8ksC4vpkF38IPNrtu9zbT2
	 N+4cFEcFRqBCHAndq8LtqdZQvsTmEpE7xb+qDtuQaXudQ/kgfZ5i4rH4dMu2XegOff
	 ag9tNbKNP5HrRjt1ffStmz5SF6vAaXjALAGEG0HTs8plkTxCM8aXofViacowPx7eaO
	 3WxS4SpIVeGAxzm+JkahcZ4iN1PZVwq/LhZPtJN8tHgeJggNv8aJhw2bwJD0SEVt1+
	 N8TbZoz0J+WGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED55C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175215599357.18452.17836775741949911381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e834fdd32b0b45e95afe091bd81d705de24bdf5a274b0607530efccf37844719
Date: Thu, 10 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752155993
