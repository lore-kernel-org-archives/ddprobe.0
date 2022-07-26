Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A414F601C
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658865653;
	h=To:Subject:From:Message-Id:Date;
	bh=MICJ9zsfYvFdx/1QkKBfTM6UMAM35nkscw1qYxwWgiQ=;
	b=JruUlkaoOm6nvXC/a2431k2My3DYzvSYG0IqFpaxSqJ4I+6/HttKx9f2IGgGraYr
	YMuUKFTE14QsjcWbSLGm8vbQ9NoJo+IQ3SGxtFpXWKT5VyrLK/DLHJBLp3NQyifVExo
	R05WyzbaOjYHDgEaq1kgZ7b6rH44pvQvFyzydAJQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658865653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MICJ9zsfYvFdx/1QkKBfTM6UMAM35nkscw1qYxwWgiQ=;
	b=jdg4faTLYrPu8JZyX4NGqCNPAQ8muwndNFpn0RFlNKcCdQEJjYG734rGju+coa33
	q1z/m6DZsK8EqqEUCQCqmAP7iXcvLwWs8hmXPMNWIknk7wqjDRIoe0cSup0n4WQcoLj
	fdxHgTZcsZMQ6KpMApfIBMqth2sAhpHnvKB6YMrY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823c1913b2-b1562c0a-1c61-467d-b169-694fb876a05b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbc861a79cfd2ece517b72cadf191366f0e3b4876c84a2461f8c237f24181ca9
Date: Tue, 26 Jul 2022 20:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658865652
