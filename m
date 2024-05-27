Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77F741BC59
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 19:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716839663; cv=none; b=r4gAzWXiwxv79MSbjDxEE5BpLhe2K4aUIKx3MimYNTbZF5s9I4j3Wfj8DuwI8GUWmbm+KOg8JZRHdYiBFt4OSrC89KriRZOITSAuVJLU8sIAo9exQT7U8ltNxKFHMwiVeVel4qe8qWXaxBuJW9IDbT+OaCDBqUD/Oo+wxdFqQ3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716839663; c=relaxed/simple;
	bh=tLRxStUPsi7+HhWm2utbCT9KEsjGs5PjgCwuC7I2Nns=;
	h=To:Subject:From:Message-Id:Date; b=dAs3hrtXRHJ8PYCMkvk+bot7cEgnUYEzN7KJMkopX58RzzP1W2J9IjeMcOPkG2QOcG8j5K5XuZOfcJ4yOcnGaFR2CP/IBfnsf4SUeA93uFA9clwI6Fv7lPhvW0GboEa2a+xW6qP99no0cKQ/aQdiYnKnN2lCs5Rq4koqxLYXr1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRmYmq2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRmYmq2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECCBDC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 19:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716839663;
	bh=tLRxStUPsi7+HhWm2utbCT9KEsjGs5PjgCwuC7I2Nns=;
	h=To:Subject:From:Date:From;
	b=aRmYmq2/x+6kv+1ZqreZcLgFFZJAj8dheyTfCsxT8HTL6tI2q+5gfRlDju8aNtV2q
	 5oKHAuwwmMVWQC3qR6uX4oHPETRysfgGS6EKU2Zqur/tWrm4d+YtUjvWcC7xL5YQcR
	 K97YqGSSO61P7mDHNv5qvxws462ZhzicUASXtuqyqM8D+1vsq+sr/+GbxLtumEfHGS
	 4VBaNdbJGpGp+Qhwi0I+Z5xZKvcN5iImW9QzNcRToXiAuFTYaSTEmuRE58Sav9TDUR
	 aP0Q9G9MYoGV+oR/EmiGLqlBwEFb6EDIAIdby8gsh2OwN5yWwA/J5gxOwmHfcf7lzE
	 fU95ia/QKxXOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC1D0C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 19:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171683966283.21190.2129630911994069495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 273b003c36bc7037f9fa9e62e951fae1c898d47bd09eeb842f045a24a0be257a
Date: Mon, 27 May 2024 19:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716839662
