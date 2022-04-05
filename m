Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034687A
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 14:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649170738;
	h=To:Subject:From:Message-Id:Date;
	bh=ylCC6adYEUVJZx3mBmX8bONFB2nNOHWlLRNYGpBfla0=;
	b=B8KCnsbdECMsJb24PQ+kAl8+1mXa5DMrkl9oFIq7cJJVfJaJ4GMn4dR4XTX6zp7F
	TXnx2TCUonv/IkgVgAJA5nj5QP5qhaEsSKj631hXX5Olrgbcguqy02+vQpuKAEdvjg+
	KQ4u70QzoICFCktNk7ZZN+ULct4DGIpRVun9krH8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649170738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ylCC6adYEUVJZx3mBmX8bONFB2nNOHWlLRNYGpBfla0=;
	b=Qe0rUTemz+X6WDkbY3W0sMrXZpu6728lM8RbMir30CVgx6Tj68/ueaQkpRpyCepD
	lPorexGhI9V++tLh7hck56iAZK5t3djp6OfGAzeyg4yl9E8lfjdh32J4kT+pn0JS0RP
	6K7q+xLSEedIiOZeJJ7y1sM06d6VLwXD7qgy8Ezs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffa3c6c58-408daf0b-4c24-4499-a80a-79c8e06ace71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5655276ad42e8a987ba688c8711fcfd27b4a27a9c27c60eddd0b2baafe97294
Date: Tue, 5 Apr 2022 14:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649170738
