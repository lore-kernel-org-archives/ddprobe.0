Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B61E222592
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746528595; cv=none; b=LzIQGa8mycCIzwcY5ysKS5y/d6cdFhfLDOD+O8h6Qxk1zbZDtvbdGdXTEU+L5PmVDItvlBxJha4C2+dE+Iu24wAqbXgfGqGKcDzXO9oyMSXoBcC8FnvE/KcQMQMwqVxxjufHIyF/Dxa1PNcLuu6STxEzOqivp7WF7+wvYQtXrx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746528595; c=relaxed/simple;
	bh=ICd4ajpYe6gUJND88fSGaNfc5rkDP+M0lljZRu5Vm8s=;
	h=To:Subject:From:Message-Id:Date; b=e91h/VWPxRz+dZWhPuTi8GYalQgbFgANX7ZfalhnMmGh+5J1AZRVqyFr/TwuUPXtXh8WUZs8vxgoTSQjqxFmWZ9DbEN0XmtJH5DXuMOCDglqR9JW5xpDlU37UYn3qMISIuw/jCSXKpf0LQBTBG5hbTfGc6vTDPXUdkjJTu4W/Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+977WZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+977WZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8F4C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746528593;
	bh=ICd4ajpYe6gUJND88fSGaNfc5rkDP+M0lljZRu5Vm8s=;
	h=To:Subject:From:Date:From;
	b=s+977WZhWJKVnQ/CquE/WU38z624duqcPRJGocWgyjjJ4f418LXHW572mJ8cNCfBH
	 DKwVkbfRGdNXoZuy2NuvMG393DhGwQSQMHVOsvWtwQjgXU8XElRE5KnxnKvwtHnFBG
	 8ENHUM3oXjFMUQ2TqsTvoIeogK4EZQjNEvPZsWZCFjIXxWDfdsa3lGQi2o8FDj4p27
	 HG3t2IIgGe3cyEP2QHYl3NQNDmXkwv7AAyJ3JL3FkenOEMIQWA+oIalBINk5SBByUp
	 CUFgccVcUwKbBVCBHYqlVHWhFfbQgtFVQRVg5ES1jPNkoRER9SHqWZveoJgXjTcaNd
	 Zm4/sBbFIuKjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA8FC3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174652859357.4988.94858994570026018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc459b75c5e7733b390ffd757e774401983f1de647ab8755a588927f8a61c37f
Date: Tue, 06 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746528593
