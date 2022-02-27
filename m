Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E64A37A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 18:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645987285;
	h=To:Subject:From:Message-Id:Date;
	bh=2rtACiyr7IusuAPD4ou6pinXjrYBp9dyopUQ2QGDKJw=;
	b=VZqxhu7GTl8eyX+8qdxRtaKRtqJuM/2Dgn6rGJjyqBoHO48Qijkd0yZv4d0AuQin
	FEd3uL58FfrhMUoGlL5CV5BGrtXnRo2I1UKESslljX82sOGMAkvbgst4HNQGfd18jrI
	jNg8cUwSzRvXveIB/auW5Cd3NY+uDtz7+R/NB18I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645987285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2rtACiyr7IusuAPD4ou6pinXjrYBp9dyopUQ2QGDKJw=;
	b=bHJfqzSVcVwNpwMtdN0KxYtEJo1KXArHt19Qgy5tOBhBVwJqb+3lW39GZP9axBwg
	cIrP1915t+095FUED8KFglWZXk7XfRb+NI4dhK0Lq1GKB9QvSS9e4MvHSOLt/SpkZ7A
	zH0mBbAMRvZS6lrcU4K6qd8Fdcvn8YgbN4s2zG9o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c7cc71c-1afdba20-637a-4634-965c-10c91c87ab83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7bc130973edaffb3e79ccf60ca45168b07f5623f9637c3309473562f3ff1969
Date: Sun, 27 Feb 2022 18:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645987284
