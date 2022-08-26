Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F552FAE
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 11:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB92C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 11:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661511652;
	bh=69zXinXQxk/RlGBFpTecdgFKKSfZ9A59mZUL/Ess+uQ=;
	h=To:Subject:From:Date:From;
	b=rgQdvk7RMj25DddpbeBg250UYNXYLEOA//3s5uJo+wWi9r2b9kWU/PsPoryve9hKE
	 8olLBzrse6g/ArwNbQbH0vOw6fL/HwVAzhiY1GFap6IRDUwQ+wGuQvLXDQRoFoSPtF
	 0ZOaYgs9qmvLlrOWmO9mESlOk9v7xoKaRye9EIkfbiWvbjc5EJvF0TcENsdg2twDsD
	 oY8aibA8yx0ClFNmuCUdZ1eWNDz2VJg1y3nW978ptjnaQX4v+vWjXP+OsbPbTmC8HO
	 m1a1AT2RJVF8r8kOsX0n9RYa6WG1lL/+IYzofi9BJGY4s5y60tb0MImLO7Hh9jpdSo
	 9bQDsfcm3t3Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64CE9ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 11:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166151165240.21244.16126414072473039640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 713505de8a55fc2666094808b813e43aed845fc9fc5738dbd3ed7845373aec45
Date: Fri, 26 Aug 2022 11:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661511652
