Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C8A33688B
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772575494; cv=none; b=K3/pUdqlAnIzxrXxHsoumr+Hpj30m7uAuAUJtFQsqMKLaqu4tbEi8sIPMzy5IPE/wFG0D5rYZywbyHKkuWC5+KTzBIlqmmQjhdqHSYIaMs3IsM7owHXjmj0glfKKtwE8uCFjAMcefsvIC/T2BGC3E6TiSkds5W4b7zdyDkGyuWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772575494; c=relaxed/simple;
	bh=hgkUInhcmFoRQTGMySL4pvk6HDpVB0k0H6Jv+9gVok8=;
	h=To:Subject:From:Message-Id:Date; b=P2JyTCvJG7AZN4aXjh4XlTzPEPqeestqkCJTlOJWByLmGto4hn4rmsAY7ScBWyT7+2zDUu+tzQpalSxlmLPvMEgCcdJvpPqLVl/LaGsQtLROOc247u9hgf9hV2grxBWWVLzh7gtXOdn33a+7/wKVC6QOsi0hiK2kv7fCg6gJ678=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovLPTz//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovLPTz//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6982C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772575493;
	bh=hgkUInhcmFoRQTGMySL4pvk6HDpVB0k0H6Jv+9gVok8=;
	h=To:Subject:From:Date:From;
	b=ovLPTz//BwHDgManfV5FQwfLKRjAFPp4deKQwOqQ+HK5Jp8B8DDL04+bvy8XJSB04
	 twcNEOOl3GunFoG4LnhpF9TZr0DMc/v+9DdjcHaraAEvIAMurewiCO1IArqo0239ZW
	 f2KC25pue6Jm8xzCmvM/xlQsTaHvBqadlqF3jDZ/ScPGnhQnH380nbQDGH3VoEBjXG
	 svLT4KI/m/hwwB4ixWNud9hZYf/kMHHf+Jzt9Wjra6RoLRzlWa6rG1v7cIZQVu9DE7
	 mlU8g7mDaa6dv6aFkp9R1j1Z/4qJUnxkiFEuww8+Ij/E+xjaNBPI8Ls9LgGE5Jo0h5
	 5rAWed/750PGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DC8EDEBF7
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177257549360.5714.13047320981716920447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be88bbe48fb708989e39ed7ac54aa8cb2795a41b8e7227329e6047875985f40a
Date: Tue, 03 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772575493
