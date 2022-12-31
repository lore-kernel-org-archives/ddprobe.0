Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D53A815AC
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A4B5C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672449687;
	bh=P/BpC9J5pshXgxnHWb9Q/JKyKx5PIy4Losc/ZvHjKZc=;
	h=To:Subject:From:Date:From;
	b=lukV0xULqnd0QjXs9g2wShangOxC6aI1zP2iK7Ix+vcnGzz8Hk3RrYhiAzIdGinE6
	 4S4/Nibef41vOB46nP+V3szcll9OZNo7uckUkLWWwHHnNWncBTqmzm9y+dMQQDAmng
	 +Y7W55G2gZw/5uqx8Z08CkYCy9NzbJQqr6lNy2czAWYyFl3YLBT2eTz/ltcGSAtYO9
	 CYJhP1W76R87tEKdenhQk4MAEBpBPGxqqiQm1ZIYbarfZi2isk/5Th1DuP2OrztQNK
	 0PTMY1kDzKO9Rpo80qVcuLxZaOnbGGZrH+n2yUy0Q+JFyc/adqKFRjjEwcvu2HLFeP
	 mqn4wqwSdrA3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F713C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167244968738.14389.8970237536112258670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2985afe66fecb91db9b893a246e2325630a070fa76d94461e8dce6c50455fc3
Date: Sat, 31 Dec 2022 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672449687
