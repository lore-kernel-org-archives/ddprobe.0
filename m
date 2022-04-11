Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352BA1363
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 10:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649671918;
	h=To:Subject:From:Message-Id:Date;
	bh=yjjcfPVuq0Z7YgEenLevtZUczkgVHzmT2ytXfQKrPoY=;
	b=Bm7E4WvAkuYcRQtwR5/gbeGra8VD8AwaXTQn7eEmAfUkrHgUbbrt8QbYdVVHrnvL
	vo9Gqz/rtmBJ0+1edwQWBGgRr1/UhsmSkXvkKAT4ofwDcWh6qgec/MYu7/qcoEujxNA
	fn0pk25LaexpGJJw1Ar50bvqv+fPC4T1mNnTZljo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649671918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yjjcfPVuq0Z7YgEenLevtZUczkgVHzmT2ytXfQKrPoY=;
	b=kcge/uWvUSmc5A+afEx0cDRSjW8B7dImllocpYMZyTrVYFqxE8FK7kvF2qCi7yKA
	SeM1xQtutyH356Il9dPd5nKE4UduUraH51byR97sKthrhdv0zUxnHyYufpuaPeadjhr
	Xk+P7uU1fbJ8xnwQiF8aARfn+zqgGGVWltP6z2G0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180181bd2ac-30ff37f2-5059-4a31-b9ea-cba725bb2512-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ab02f86e9ecc742561c71222aa5857e30f57e9c8e3b55a60879324e5aa4f448
Date: Mon, 11 Apr 2022 10:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649671918
