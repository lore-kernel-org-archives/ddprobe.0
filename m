Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8B623AD
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 09:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648199518;
	h=To:Subject:From:Message-Id:Date;
	bh=52lfaTgT93bVlODANiL1kFObcFEdsXomxxFYgBC7ES0=;
	b=J64T/vExqGj94hNUP2ZuP5i8xkhLk3RTsUhnjAFAYWAB4d9b+WYLacZ/JwrgibTk
	ZjEwqHoy8+gpP+Vb7yPS5HyQDgt+wrY+P1ktx53RKkN9J9bsmb8Ij8yFusVtxpoOLRD
	AivHRcrnjW7iIFmysk6Gkgj9GLJb2vXwadCGcAfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648199518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=52lfaTgT93bVlODANiL1kFObcFEdsXomxxFYgBC7ES0=;
	b=Jn0G+vqV2kpJzBirVdTFB7C3xhsB682rfd4CuAlrLDqhT0li3dggpM/w4m0hjtrp
	AVu762bd/O3RaHxZqa0FWJEoFhu0GRLnEpjFt9vumgtB8isKqr3H/vh0WG4fltOWTyv
	8UuahmL0QUjsgEBTPsQp9O77p5yCV6/c0mqVikAY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc058c85e-6b9f044a-e61c-4536-b35f-d21a24555572-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8d99d1fd59e4a41488aac72192fd72699d0c74f9a0513513ea6fe3a281b0a68
Date: Fri, 25 Mar 2022 09:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648199518
