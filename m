Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0EB15A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 01:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648345078;
	h=To:Subject:From:Message-Id:Date;
	bh=uUJ3z5tdJXNqaRlw/zihWD11CFbz+QhKtN+4U6aAhX8=;
	b=C4rav7EH5KJVqE9Rw1EVsIxD7kU0zQTAAQ//eA74srKIonVqxHX1aV8bLcnGpnnM
	/kPKidNBRSLObob85EAZ2D89Bj21+KZaGAebHujV+Svzf5WCYSsU8wH0MwUoB5ydXPa
	mna9Kocu+ahOPzmsMZpv1/od82HxJ08YMvRGQNHs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648345078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uUJ3z5tdJXNqaRlw/zihWD11CFbz+QhKtN+4U6aAhX8=;
	b=Owd7ctaVfWHGs/0fF40M8Q0hnLt74svCh2/z4ISLfQjETwXlLQQ2x3EGju5H4iPT
	ethw+NR1cSLQHmrtuuc/5mmngLRYrQbjt0YfI3+bgkLu7Uv+Z8I58U7TUM4gInrjqyP
	7FiCZMH9EO0+W1teqLH9QiWDaQyvzowzsQGDC2TA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc905da13-83a3c7f9-3b28-45c2-ace4-38ed301c9e64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 929d90e5c898ed2e70abbf3ec5c1b90348caf5ece4255ca45facd6ab8b3893ae
Date: Sun, 27 Mar 2022 01:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648345078
