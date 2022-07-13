Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA5E4A25
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 22:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657751212;
	h=To:Subject:From:Message-Id:Date;
	bh=7yMfAcjcVhkMLQzTbE9kUVi9sVcl7ZgT2VCf7kD41so=;
	b=COAJ/Yaxl+Q3y+SGqc7lWpgY56ulZxUzC+m9KRKKS5ttl18nQwIoae3faHVKFnTu
	mar8/+N+FKPj2vzXGPlhPtKUTdQSb2L0Fd2YIZdLIPwKTVdlxTjDeTVtFgzoQPBcIa8
	AwkeKIzlQxQjGUWkQWhcSRK8aQCQTW9cz8fSA90U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657751212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7yMfAcjcVhkMLQzTbE9kUVi9sVcl7ZgT2VCf7kD41so=;
	b=PXeXKaimI0/fqmDgVqr16DiRRzXZXbKGvtAR40Qa6v3oz6zXnN2wYXu/FwnsfOKj
	wT7/rS8/clkwB8Qhg0I3QfD7Ph8o85xRw/lwLRm/MUejzjRJJxQRYDnxa0ynfYGunWe
	B+YAXi+wAV81HdXCbdwrAa0/oA3iaxkpxauuCso4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f9ac1115-d5e8d6d1-fbc9-4e88-a059-11e24d988688-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1742d44fb72c8e21c265e5ba00fd27df3210dcb7e62ba23d9ec51a3ece25874f
Date: Wed, 13 Jul 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657751212
