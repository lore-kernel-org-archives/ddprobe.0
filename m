Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB7020E9
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 01:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646183784;
	h=To:Subject:From:Message-Id:Date;
	bh=DMTUHBVdxUcUvX/7XH2pyVtRbRkNNGt/e0zhMmaXuW0=;
	b=KXkFvuhw5THulshxpLinmsJHNeF1PQfHStv6SToCv+YQ1KTTMEeAkMrh0Jl92wsX
	sLgsL3ZyqFptsSv1VbzXJ/+t2qW7VNpOoIS0AeI3glcqUsabIbmDvwuFwHTFodtXQgT
	Nma6GvC9AQd7+Tufyz33KhEkW6dGOoddTxCGeZEM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646183784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DMTUHBVdxUcUvX/7XH2pyVtRbRkNNGt/e0zhMmaXuW0=;
	b=WSMCUe8QY2ew/IrB8WF+nHohtHfirvbE5Qo4gTLXwa+bGoIfabK4W+lqQCGV9dUA
	AfL1f1RJCtVpTgpKIUwhqqQU186FgZaacCFbzxmoYYxx3YZrMajTdjTew/KQjz+f5v9
	JXwG0nWiTCBGHQLcVSJhjNCfOoTn8OxXGVl0UMNs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4833214e-ec1a7fbd-1dc5-4ff6-8258-64f5c03af69c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc558dc2ad2de95323be3ab4b79e3848c4e0988cee47e3b0889999c7eb18fe77
Date: Wed, 2 Mar 2022 01:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646183784
