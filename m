Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFEBF7A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 05:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650606478;
	h=To:Subject:From:Message-Id:Date;
	bh=JvxfNumux3oivgogWzK7dsZrCfOYdCb8MZ9gl/BTMfw=;
	b=B/Z94Og7eepb57qgqRc/YYl1CpeOqVGiq2z/TzdVV9edPpANCerQPgXYIPcETnug
	MEysoiZjOz+yeIx3juoGcZz2lrdLL4D5px72EfZjrRZEJnzhgLzFDPS81VO/6PfSxoA
	oeLr4qKcJE43R1TPgB3HWlxElTF1Qfu48QpJKobg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650606478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JvxfNumux3oivgogWzK7dsZrCfOYdCb8MZ9gl/BTMfw=;
	b=WqAvEr07IB1y8rMWz9kTNNt/IjgVM2TTjwshfL++Kl5KDGgigwq4jP+20jxhKs/H
	bdW/mRGwZskBePH9uMwMLROjM4wJJP5NcF5dbgXKxwGvVrsUdvol7MwclX/glsGFYnv
	6xoAQYpylwPf4s3u4P/Us8TrufBFGAE/FCHAaR3I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804fd013cc-41e0eb88-7fef-49b9-a26f-d548261687d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ded155f8d96c60ec676a202b7ee9e5378032cfa99249078d6c946a105bb1703
Date: Fri, 22 Apr 2022 05:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650606478
