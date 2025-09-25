Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B582277CB2
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758790794; cv=none; b=m4uHiku1yrytTKOUbqNp/7BBqwfDHbig+sQgIaQnIhUFUmcWNfynt88vRwBthtydqti2uTNouXpyYi/3yvNrThh+vffgqEm60SF53gUWDGxwnzCg97j6vt8dol2rFUXnSdE9bAujd7r2n7OZUpzyFnYvIgT/Nl3vby0RognOYwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758790794; c=relaxed/simple;
	bh=3GaVq/Jm9cIPcyoASlU1CSdZjQUiY/9tCe2Y00ri1Cg=;
	h=To:Subject:From:Message-Id:Date; b=jLp2e1uvAur4ICYu2Rp2rKixhhmC+FKexHkU/C+67Ks9Q9FrN5CRPJNHlR6YH/Hfnw5EVTOyKe0NwsIWqtoORqxSabxtGLOnaoonNtYz9ou9ZWx3ht/xaKw7pl8mdyXoTdMhBoEyLZ3WrtiRvE/s5DUCDLnfOruj7y3ucQVStNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJrbT9ns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJrbT9ns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1297C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758790793;
	bh=3GaVq/Jm9cIPcyoASlU1CSdZjQUiY/9tCe2Y00ri1Cg=;
	h=To:Subject:From:Date:From;
	b=iJrbT9nsghZ/qhREbVHGZZQVjO3lWq+LT5FSAmr+oSoz/j2vIcoc6WEv+Kizui6AG
	 bCwCaRoieE8I1I0QmuFhqELc78IJ+VmRh2R7vYGdH9Gn8dE/scuIielOVVTNSQMLzq
	 DMoyFCzVyYuDJ/aRZ5J4tzTa+rumuxqJpRc67q1bmfsYsht5wV7YWr1Mz/OGGjXewJ
	 t46K5TgvjVVvJtizDjxNcV82T8nrueQcSJ2SACwb19sDJgYmyuykXWuc5eBfiHDvwp
	 /ngDLEF97ysOjjofAl2xHY4rHaFQi0aLN+Ia0N7iNqO4h5Ri6truUtj0VzNn0Vk7ci
	 3n6PWzyq7cT8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4D6CAC5AA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175879079357.20106.1941374231853958450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fd4709bf58091e578c19b27ca430fb3ad32221366f34a0bb3e4e3ba936939c2
Date: Thu, 25 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758790793
