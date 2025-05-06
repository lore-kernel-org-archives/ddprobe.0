Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E45C1946DF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746575994; cv=none; b=n1ITDliBzRMgDc4FkeGkv1a76K+5wCUom3JNFfQlylnT1MvJ6M71mb+9sQawBVSkgnUjEt77ejd/rtgmZQbMXiQxxcVwyVMW4he30PCZX2DwHsaPC/Wt89ahwlo3c/FyG4jypM6GeAlKeer9z3jaCWFvkoYnmTidIW6fbKTFYJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746575994; c=relaxed/simple;
	bh=sYNo1JxrHTp34Q6jSrv77sJj4SpD2jDJYTDMwh33yDQ=;
	h=To:Subject:From:Message-Id:Date; b=ZpjGNAY0IFXxWsw72id9bpLYAc+cvtabJZz8cUkC37Ij/eyXx3RbXExAymQjyswu4GiHNNrp9J3GNZYYvKpx0J6YN0OPXQn9j8boCX71LKkoyNk3OGN7QTtvY3wjQrsOgbj7IawsA5PM4c3iUw5MySljXI8oNgc+FXvSJ5WvlUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXABxZjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXABxZjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76E4C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746575993;
	bh=sYNo1JxrHTp34Q6jSrv77sJj4SpD2jDJYTDMwh33yDQ=;
	h=To:Subject:From:Date:From;
	b=aXABxZjfkG08Apll0CAjIBT9SpFjnC+xAPxvnf3gB35CuA/pTXzYrWFJ3YfXn1O20
	 99ANPgU2wKWivy55cM8dMrOpYGMnzNz8fbP2rXN6ibwbPwFdwL+SvZWYZs7TWiYFYu
	 UtT3uqT1R3vAdfLaPSJgF1dhuj3NiG2MR1AT9VGq2ii8L/A4S7kQVMJ71uTvrGDt2+
	 Sn82p77SpLaw2sJ+5N5nKc7N+bnWkwJrghQhofk8rcFyQfLnxwtJXyOuw5RY6ZhRwn
	 qiduX3S6f/EKdMypJMkBuvOUWc8hdexzfv3RRzJfFf2DYUPJfyK04FFYXrytVTLWmQ
	 Xs05hSXjL+OwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AB9C3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174657599357.27200.4241381399578628449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f74877ecc26b4b39c7876f1734f9179c72e4370fd0aed81113284094bb5b1ee
Date: Tue, 06 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746575993
