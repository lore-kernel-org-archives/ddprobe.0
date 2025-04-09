Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320611DE3AA
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744189794; cv=none; b=Z/NyNhjlijlN8F7P6DSszsZPmrip2/NkMyUnfe0vjZ9oPuTVbRQOzMmPQ3LqaLhmPDE43KxYVRVD5ikpD/NtRbrJi+HFWKuEDo9b8zPLl+TD7xoAyo79e7HQXVmI5hHjSYGYweimf+wBvLz33W2vfT8k4UQYMJLEeQDhBx6+G4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744189794; c=relaxed/simple;
	bh=XpHHL9lR/4i2nLL20cXUrFo8lyGCevMQFspQo6zNRrU=;
	h=To:Subject:From:Message-Id:Date; b=MbYqhBplIO4dS/hkQ9ZS6uDwvzCqJQLVRhxmL5Ygj9qMsDTCQWSazP6yh4lXNn0p37lVH8vsiwkMHCCN+XxnGdZg8SKVqp2A7QcFBcXRC7Y0o0xDYL5HIKV8RPvIwLNS9TYlTjEJpGrXOvxr5/vfm14s1Gw7Virer75YikGZ0p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1XndC/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1XndC/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F4DC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744189793;
	bh=XpHHL9lR/4i2nLL20cXUrFo8lyGCevMQFspQo6zNRrU=;
	h=To:Subject:From:Date:From;
	b=t1XndC/nLD+rUNJxxFPGRQx5cB3BlwbDDNGjUw5jKx1bh96SqC0/wyNrq/mrJwWv+
	 RME2jnu6Ql+c0WVcOWCQGFe5zI5z09h3M5CtThhygq+dIYpxUV3DPBmCBVWi+9Tay9
	 kNWQzOKgaDon3wxqI78S7bhxwiANCiH7YgWldNT5ieVt2cTi69/MngTKYQswalEec7
	 rkOuM7epCHqDy2jkUvXd9H5kFY+g0OSxeBS1WHmH+NrLBbsWahQ9ldZ8HzeHnLHkEp
	 3RdQJ3+7HmhvtGVR9wdWrED588GIw/S0DW7/fMe6fgsFFEZthmZz4W4cLcEweXKjJ2
	 06ctbascVYRvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93211C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174418979359.15882.12340121234495105694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f907377914636e839ec02df477e957b8d81e6f7204f2bf2c995160322b8e312
Date: Wed, 09 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744189793
