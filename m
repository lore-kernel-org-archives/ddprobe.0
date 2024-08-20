Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5502E3FE
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724124954; cv=none; b=p56ntj3bsqKR0gmCqYxDFw5JJIqG1ehxhdr3M3uwWcLiieskfujxwb3zt4NfiBkR1bDTYZBNqGTskUyux2JYO5vTS1PYIH/2FbjhqCbl+zSDMTDLqq0v7qCttbpSNRVo/w9eaYh24FD5Zd1zFHt3WCNHFtxwArZcOeap9YsWb8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724124954; c=relaxed/simple;
	bh=uwX5KrRTPEFwPhoM9aLV/QP3dznTKKlQaqcxUYuvJDI=;
	h=To:Subject:From:Message-Id:Date; b=UE6JaUmvqtuFaU2tnfQ1nBKcfuAp+SzgJyQND+dc8qBt7CmrWPA3MhP9DuQxd2Fy81pOoo0Jc3/bvNu/tbe7rFVKvUWOYNbY+EIG7vgIT2tLdpx6geefSNgs2XMNDdO9ADsGQAzrPeOKe6FhnB6QGoN0TePKPUyVYWI8gLtDqxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMBx4/mI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMBx4/mI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC543C32782
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724124953;
	bh=uwX5KrRTPEFwPhoM9aLV/QP3dznTKKlQaqcxUYuvJDI=;
	h=To:Subject:From:Date:From;
	b=EMBx4/mI1v4BaC8pweu/hlpM5mWRyF8ghaBpXi2iVHGAxLVtTPA9JXsIHQJPcZAfT
	 KD9WXG062le7XYx+J25+P5HpqaRDM4UEFJbnW3fAs1qtuDmbw0Wy0AFbZDPEUzjdnF
	 dkg0ysqFRDQurpWf2m7Sw5sCb9d1gpjc7S7+AOgVGJqiM/YkN+7S+F1q5p6+GrP6z2
	 XOH8lHbMzeWnYu3cCXwEK4TMmubwT8U/YWOOXTj7mfzuHlzq7PGJu6l6/h9k8sgN2D
	 GEkjIPJ8683lR8QGkcqihDS0jMv2bdIJJ58dAMf7bwlQcgwvTPlvkraGo4YQOS5oPK
	 ltxnB3EtsStlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A211DC3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172412495361.670.13819155579304283308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c36c721f5893f89f6981742e617214f0d788485137ef74bbff62a0cd52345631
Date: Tue, 20 Aug 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724124953
