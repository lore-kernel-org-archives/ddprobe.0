Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF995361
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647210385;
	h=To:Subject:From:Message-Id:Date;
	bh=TvG3eWrXJPVLShclXThA1KSNjKOxAb4i8EGUEACEhrc=;
	b=Gkr3pY/ySfrdEC6jh+3b7UKejO1q3Ox2Y35Qu31ajaEZRx7cF+obc6sG9vAmiAKB
	Ag85fI8FSBcZjQemKcpVl47wrLKjV1e6l/pCtwM/1QuDaQULHXJmxxphhrCxlJ6GK+p
	2glMor0KTiyXbEo/+j+m8SrJKNhQeza9LzOR5VcE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647210385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TvG3eWrXJPVLShclXThA1KSNjKOxAb4i8EGUEACEhrc=;
	b=SBTfSDvDwvt1IP48DrdX4v5AKE+I44TwUnkkDR7hqSi0CBjpI8AkEVxQ/RZYppsf
	CF72bCiIxUIgnlfJl+JjJqVzvMINg8r6G61jbtIqRNjy8KAttUWjXLwlNGPxWvWKB7p
	lNUTzsK4WC0xfX8/o/uT3cABL254pBHW5+1Tg0dk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8563cdb2-be7f0a39-1134-456c-a19a-aecdbe28df4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5515745da209548e7b4035333f22ac912549f9091e71303ab1bbcc9c72ab59ba
Date: Sun, 13 Mar 2022 22:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647210384
