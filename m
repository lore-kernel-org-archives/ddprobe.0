Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326B813C9CD
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727007954; cv=none; b=C1Acdf5RCbgcE5S36uW5pgx7ggrKOwxNCYFDZR0sl02JyOqaruhYyNkb6yxcg73qd+30B2sXGURZXi6SrXMxa+lp7W51cj5G/k/+DhLxCYWFnLm+GUC9w3KuqY43bD/HRkyXNia+eczd88VyS+xuFT3HtKko3c0j0hQvmRNXWEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727007954; c=relaxed/simple;
	bh=oX+IESpYxG0XgdK5HrXuQqH+HavEsuWbdVBF/c0xo5w=;
	h=To:Subject:From:Message-Id:Date; b=rbOlkR7QDpU/hGwPYxhIzFmUqDNbuG0yUfkY1562kew5iDU6446LZFpd/ILL+2b6AhOsI3gdsiCcdaalQXO5/w07ZnikZZ3iqOyVa+fA3mkL70f8Wq289QqFMcNZqEL45F9LnPsneEUWAXf2mspwuqJmyprjzboNi6UM8Wsyqm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwIVmnFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwIVmnFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA7FC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727007953;
	bh=oX+IESpYxG0XgdK5HrXuQqH+HavEsuWbdVBF/c0xo5w=;
	h=To:Subject:From:Date:From;
	b=KwIVmnFcwg708BH7bbg3/FZIB2Tpbp6HHuYytwyblxUKvk+hqkKkj5oPUqvok/CCg
	 5536dphV1fHbedCbjZ/PP1wz4LbzSGWr1qynvExIUAFeW+XUymtmJeHKtagJ7prA6b
	 OzLlpJOjUEVIrfOo/etEpphfaYdbhc+gStlVt4hk1kqvGPUCuM0yjldLp/QVXEMH/B
	 +VCocstXeZRhF4xXVoYLpFD10CPw5CXPd/g0JxBTqQn1bBNJb2xzWHxbHz6zzwPo9R
	 zBLk0Cp4C6IWrrygo7ILGUI4bZAEzrkpKeBq+tccnwFhWq5bfdWhfGV46R5rbBWpiT
	 AXubvPe9w7e/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE79CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172700795362.26414.2470710026844165363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7cbe04c05352fe068fd6476324cec39e5bfbd9cd6a46c7fae3147d52c4d1c56
Date: Sun, 22 Sep 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727007953
