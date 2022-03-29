Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D645B20E5
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 08:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648543738;
	h=To:Subject:From:Message-Id:Date;
	bh=e8M6Pf690ln+AqURG0dkOvvTO21qp2gpRVcBLuGu2yM=;
	b=AC6hlK6mn3orPE4bhTu6xcRexvGcj21mG5rjRjRg8lHt4vlAc6Wtem0X6Zlaj9xA
	izJhL496n8lh7gQuKssFUoYY4pseeCK2oTLpGEt9O77ivcLZT7tKVLw3GKKdL7kqo1J
	6XPUnSGqmDUjIa6CWZBnfTB1/d0LAmlzbOi3LXt8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648543738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e8M6Pf690ln+AqURG0dkOvvTO21qp2gpRVcBLuGu2yM=;
	b=fMjsRrQNkZoE7qDTF3IDvz0yMEbJCCv4KKDzxHNJ+o0uuGMzXoskDPkWC+pnAzQh
	bPvQLMJy1lUDi4cvcfu8JZ6YqTTh4MzwAKOx5pU6zrmJPNa7SEHauL3oTwD+qg8x59i
	v8hXJVtDY4sXKxIbxTIHLZx7xD08ber9sk0H2re0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd4dd2995-6cb9b58e-26ab-4c1b-9c62-c90803dd3c9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52dae7337d9bea1c0ace9447c14711e6da25fa6d57b664bd60b89a7a0c1f3801
Date: Tue, 29 Mar 2022 08:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648543738
