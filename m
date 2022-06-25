Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE0A17C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 12:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656161213;
	h=To:Subject:From:Message-Id:Date;
	bh=7NAeQQ8fWMIGEpagDEG6LMYBIQiQquU90u8hP73O51s=;
	b=GYf9maOMI58ARToonu8CN6Isf/q0E8CjmoNHtAnLWYEJ5EZZd1SkiDho9fEa5ToV
	3Z/W6X0v3wagf5+96yuxGfwKOOlUuBHluJVFf83EamctI7Xh+zkwhYNRklZVu7DD9mO
	clxy1q3HeAYQIrdIXOESDJUfc6ebqLTXmGRyyrxA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656161213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7NAeQQ8fWMIGEpagDEG6LMYBIQiQquU90u8hP73O51s=;
	b=ccK0imVU6Q6PmSxDHm7dSeSRQKrS5lxytzDLGAhShouEmLnwVIEwe9DMV9F4DHgd
	tfp4rv6mF3yW7W7Y+K5qFYZ+sg1TO5vpjzP4VXKoEGIsPeFKkk5kxvUOg4mOfiaTsPl
	1UJaK5/prwlJ6If9sYFKk8tQZKjgezE1ZPhSECX0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819ae6976d-22d0d6b1-ff95-4687-b606-dfb711054952-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0fc2c63ae67b0d9976000367dcb362dffa9ca22f9231efab39697a667ffeb833
Date: Sat, 25 Jun 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656161212
