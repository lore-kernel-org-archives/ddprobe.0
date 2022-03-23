Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB0B184E
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 11:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648035685;
	h=To:Subject:From:Message-Id:Date;
	bh=6I5zQNpvDANjff0tBM01xgpcp+T5O2W05HrbkUs0UUg=;
	b=Mm0hwOTWrwGjEpjZ4/RYTqKSHm3UdPg2/wEjiaj04Xyy8kIZ+26a8xVs5nmcN5oM
	cRUFg09Vvtf9VzBi3LVM0QFXvvyFDulh9T4eQWbTmjeVDBm7E7e0CDRj7yskszKYWKd
	89jcSs3Q7ufHM4bXUAzca1xztyPZYNZ78/1FEck8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648035685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6I5zQNpvDANjff0tBM01xgpcp+T5O2W05HrbkUs0UUg=;
	b=XVUfFul8+oG46oj/okyx8orxD1Sjsye+a2wu6V+/qTxR8WgjgyAxcTFzwksDWJ+0
	izBbyOX5wXwUrYbMD0hVZU8zFv5J4qkCjGOK7KyK9NtcznoVccjErmje8lr5L3V9+RJ
	G/l/lCzsXNwm1MYgK9OfHuRjEFKl5Xh+sIK3WUVM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb694e1aa-de207d53-7575-4dcd-a49a-2eac905b0b57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fef1f8b1aef9ad993cb03981261bce3231b232afe80722c4bac3da298bd65c3b
Date: Wed, 23 Mar 2022 11:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648035684
