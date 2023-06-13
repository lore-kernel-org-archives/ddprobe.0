Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E161844
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 07:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5054C4339C
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 07:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686639965;
	bh=0IR/WyOexBk0IlfjQpoi0jvhRPUDJ4nI0YfZYwrAKLk=;
	h=To:Subject:From:Date:From;
	b=R9Uppn/4gjJyvXnfOMX5enkI/NYCWcN1uUgTFDtLhl8AgYDXa63aUZ3sP0YfeHuiX
	 khnjoaYNgZagCjI+qZYbUjCh+1kuFgsRoq+8mVdChSusQwGS242debpAR4zyqwLbGe
	 RSY0zy1WOAkYTnb+XUJ1Ryi9hbUeWZncjS+oTKKYfIPnKHc9/Ry997PJAZRqWOz9Wt
	 c01KPKEy4G617eKLu2EkY5TX9dc3WkXxDPKqyh1GgsJWBGVlW5QffnWJBYC0Nd05QF
	 deICi7pI8IDq5MOI0UPAy+UAy5X6kqb0MXSkNneS2EPwjLaemdNSVPClZdX6QlHwyp
	 9P2q899ANPQ0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3294C88CB6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 07:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168663996578.12014.13625733667773952878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d1cc3f17af478dd171717a7bb3403cdc7c8a94eacd9687ee06159412ecc2aa3
Date: Tue, 13 Jun 2023 07:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686639965
