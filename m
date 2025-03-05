Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0007481DD
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 17:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741195733; cv=none; b=aPFhKE6mWv+1zCL8clz1pn8+agc8RYz/5LJmj9JK652XTwsAcq5UAIU0ZTXwbNuKSgeyBeS/yMP6Rc/IgVgCZ+3ZsGxUFYldK1534diBtLREAW1hfC30NC1RHfoGmEE/+8AqyvlUegKgTKhwwib62JmaQnWGBmVpbRbLUrMi+/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741195733; c=relaxed/simple;
	bh=vwxnumn2Xy4HWYtRFbCAjSK/nhqiS0TmiHDCrVnxoOQ=;
	h=To:Subject:From:Message-Id:Date; b=KQbFTJGF1HXnIzeAVUEyNIi+Jdbwrk5HgS68Ib80mfnbJbhj5w7XEtGBdeXTxlGZ6Nn+jX0iiC2bHQznE4Xxeb8lVNOFG7xjDZC09vsRbaMf2L22+nxec/ECqUXyns2nr86UUqay/qKydZSGG1stdWLR5KZS/wA+tYr5JejDr8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFCqucg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFCqucg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00D8C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 17:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741195733;
	bh=vwxnumn2Xy4HWYtRFbCAjSK/nhqiS0TmiHDCrVnxoOQ=;
	h=To:Subject:From:Date:From;
	b=DFCqucg8JKZUSfDOg/m0NlYI62v2jFkkn+i9vyaUdIe8/6FdlX+PyMPENOpabylmm
	 QXDvOligPbQUXUa5MMc7/Ncv/f0i0SEMBcHzE4J1u43qd7MUaLvQ2OehzDLzzZQ9ur
	 9xnydWVeQzWpj4ISuhYtjMScYg4EECwJGKmil70InZDJbkYPW/aUwb9FRA2f/uENLH
	 4XZ9U18Vf+dHXggWfuiPYZkeSJ4RyPB7NkZoAQBUTZt4HJjHjePiYAjrhrTRc+qKXT
	 Hdo9lkuJXdkjReY7c7HH2O0VRXRwNznkgfd1Hk2hnCueStBtPKW9Mfyqta/weZpob5
	 RtfdY3yJaI7bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952CBC19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 17:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174119573360.14285.17389326379289430111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2043b1515d008606e176befd5bc28388454ff401c49bbff3d7aefc86a7812282
Date: Wed, 05 Mar 2025 17:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741195733
