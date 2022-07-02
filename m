Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561664412
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 20:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656792412;
	h=To:Subject:From:Message-Id:Date;
	bh=QkaF0JwKtVj0Flow0h5hFfEkhwVAu1cEeAKy5iwdFOM=;
	b=QUnkItvWoBOCOf+vgfiAvbCwFlHN4g+guD26qdim9y+vMtpEWRkQGD/NiWpApnwr
	80JcsfO1CVRWyqx5Hfp+YhKuOFRjhCck52Bm+lhnSuWsyfJljefapC3zdcA51WILV9O
	P4uDsC4cqPp4rf+nH6hDH5Yy7hwguMY8g8+cYn9o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656792412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QkaF0JwKtVj0Flow0h5hFfEkhwVAu1cEeAKy5iwdFOM=;
	b=PRX4pnrrUNiuUmVN4S7Z5vfIYnenWH3zDC6Nt0Ju+ZKGCdLXgbvb/589ZWlgNkIV
	mWxVycNw+AP5EpoPmHNxrlRWa7Aq2xU4BXdupX971krA8v2QozZIgPAOFdwE6FQ7rj2
	TvBfD5JTwMH9wbenWfzq16Lwmg33LW3qUrE3KIYk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c085f068-f8bc3824-6edc-45db-81c4-f113a33f6133-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8bae1d5c839c97cd76a2c4a1470b3a35e9cecebfe5f793545bed507a60b74fb0
Date: Sat, 2 Jul 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656792412
