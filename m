Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3FF45115
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647631885;
	h=To:Subject:From:Message-Id:Date;
	bh=RAh3Q/kOz2P4ytuEoLW0JlRZctGMGzjXp4nJNIO4NWc=;
	b=UwbLIjz9/JxYlbgD9hcoWMNX0/Ivtt1qERbOdDOGe+OF+f4s4pr09yqO77v9koSX
	ThE08ZxP9003WIlepBiNomjoJSX5qUnwBUq06ZniAUfK39omesm4HG4LA/w8H1iQ7XO
	+7o61WnvjWHt5M5vYfjrxC/cipFKVTUjNGH6Ji/Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647631885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RAh3Q/kOz2P4ytuEoLW0JlRZctGMGzjXp4nJNIO4NWc=;
	b=Hlad9KaQ9nSQSHNPYNmV+ecj9tX46CUkJ/KE16JEO0n1s9g57ZMy3/P4HMABM5xF
	ZXYHUgh7BBKFefs2XEUYWmEZzH6gdg4o1NTQzNAW6j2YahhPn1sX+J2VG5K8szG4r3d
	qCRhM6L4GNg5MvdHj+uCjvi4bgQJCVMQ5OGmOIZg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9e8361d7-30af67e3-feeb-474b-b16c-0f2ecad6fde8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcd4a763acdbb9ac684cfd368d349534d700f10af66c40e69eccf4d0c6345559
Date: Fri, 18 Mar 2022 19:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647631884
