Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F255636A007
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771924494; cv=none; b=Ozm/ZLQNu2xOzHzgtHb0gWIpZgucgsuf9vij+BPDxPPTA6Jo0YweERKLLO1FG81YbzGpKITwD9Cog4xdwis7k5Z3cGost5kP+7SVqRosYus6aVoy7FhNN5mmaeQ+8qxx70cjYawILM+tC/YKURuhN9ogiIKX7ifBv5ZyPUj2qyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771924494; c=relaxed/simple;
	bh=uGTBKS/hdibHvna4NHKJCL6ejse1bJ+H9VZ+6ydhhYg=;
	h=To:Subject:From:Message-Id:Date; b=goeGu1/h2GIByzuHHSYSKAXdBnMfouOGxfvXG+gW63pGmodpfSGQ9pkWz6V8Fmjlq+Mrl0v7zKoH4OHK/HiufW6f7vnVoe+WGOd8iWWfZUXl/3o04ydHmBSO173W+vCabPJnVBrCOao63KE0xwaBSZP7YH6efJgut/+9c76pYEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNOlTDi0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNOlTDi0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F32C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771924493;
	bh=uGTBKS/hdibHvna4NHKJCL6ejse1bJ+H9VZ+6ydhhYg=;
	h=To:Subject:From:Date:From;
	b=XNOlTDi0SckyayxBK9hIKKIkrkXVuXcBjHDgzfO4uHANsb+nt5q3Uca+oZq2liWgz
	 +1/93pmcLtORzBnNOBcdITM5E/uX9zpnsLdemn5Fh5y8ZnfoF+1VRMe3XcZNLrFDYJ
	 5utiKcD/LKz0lUOqFTHqeG01Cd6i7AXd6VlYALKLmpoKWb9mFYo0F+yHXmoCbDpwbB
	 uveNk+9ZH32VPzaB2PCiguhdMmDwaJuoQqOzPYnN3Tnj8n1R7mVsmkF2hkFdsBXFtX
	 QqcLTq48dNTCzO2/Z9zHux5O3DfKE7GadOyDC7+8PbWjIR863H1g9DRnrjRMfG2DU/
	 A2T8YpotDIeTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95692EFB81B
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177192449360.30813.11631566024979200213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2faae36dc72d62c9fba1749c738e6f9b265eceeecfabff092ac451bdbf43c0f
Date: Tue, 24 Feb 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771924493
