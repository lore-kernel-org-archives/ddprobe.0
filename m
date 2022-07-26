Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F0D601C
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658863252;
	h=To:Subject:From:Message-Id:Date;
	bh=PY5qhJyc9bb9z6FX0WYlb1KWaomPbwW2nN7OGgLUwas=;
	b=gC+Ium5/kQR0XYv+BkuTEJkgLpwyDj0MVuXofGWJ2gKb+GdpUXzfFCmo6M2Y2BZw
	IzEwhLZAgPqIyR1gku3PbiKA1Be4GDVqZu7ixckQU3Iw+J06q1naOLJ0ZIKKWCNLHXY
	ZgOgwKYGhUHn9MfevvPhylIKe5hHpR9bEZcd5Sfs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658863252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PY5qhJyc9bb9z6FX0WYlb1KWaomPbwW2nN7OGgLUwas=;
	b=LnJRBZLUM8LvymHEqq6RHzzhSg1F8T4k3gaFOmy+D0qCBiMqTi+HxkXw/gT6pv64
	uyJfNY+atNh81Hlnq0gMwzOtmTziRxIArfYrHId3SmBqltZJ5duEfhOzbJDRML/5Qda
	S93aXXQk2ZpukZBM4YlfdnMc4/+09cuqOAswJ3g8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823bf47447-6e9dac75-14fb-4617-8fd3-feecf57f40e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30539757fb1617005596819ddfd0fb8c55934a1bdf0dc1f5b10cae106ad19f19
Date: Tue, 26 Jul 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658863252
