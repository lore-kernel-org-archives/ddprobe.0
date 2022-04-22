Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF31A290F
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 18:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650650578;
	h=To:Subject:From:Message-Id:Date;
	bh=K2AXZDTfcXgsd3oiGNYXzYRCOfBhaCW0G6Dt3LtAnKQ=;
	b=QltRuQka4Lu4ylpd1LMU5/4C7bA1sALJmC7vUcPf1mUnb6NkGzVWsjF9pYFzeBiA
	zJqwkhD9JMvS8HAdHJLjX0Uqi8pBfVKhMjpXIeKTLgQXi8gudjowP/VWav8w9gpT+VH
	ZW5GwtxsuBDm1NAvgDUcexUoMfQXAqUz1X9489po=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650650578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K2AXZDTfcXgsd3oiGNYXzYRCOfBhaCW0G6Dt3LtAnKQ=;
	b=ctHwHOYvscFnl9nuWeefhVJsLzBqrgf1ZgafIV/U6rl3lqB2mRuw9fqZLStT/QF0
	Hfuz9xTWt9VZFbc5j5IroiednuBx4kTcQg8H7Cp3/y4LfPHlx6fBrJVwRt3ByaEoIXB
	uMRyDiH5EihYxI3pWG+siw+KZ0aswa1L4pS0Tmac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805270fd67-9bacb0ca-1c0f-4f40-8067-42a17efc9127-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cb58876b4d419c5f99d8bc35085363228317f07b87f82310cc8f67b41cce756
Date: Fri, 22 Apr 2022 18:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650650578
