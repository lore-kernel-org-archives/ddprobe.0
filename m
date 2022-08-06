Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78ABE7C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659816053;
	h=To:Subject:From:Message-Id:Date;
	bh=p/S/I1yev6QBwFVShyIM4tsVjSjmJMfoM8p/2L5/A3Y=;
	b=h5uCepkGxPZ0iW3Qh9EOBppDwSeWxQLjgx1GhVyImAD0PGw7aGK+Wd/AOHoezqf0
	QsgxRAqsFn4lpnTEb3Cfp1nQFjAgxt9w4R8EjsjI+/p16JzML3lWjI93kUWXPU7O4pI
	UJIEP2vKX5tMix3RfNNGw46dty4LsEnFyRSyuA+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659816053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p/S/I1yev6QBwFVShyIM4tsVjSjmJMfoM8p/2L5/A3Y=;
	b=RksdN/ji6nrxOn8LsvaEbnFyZhPW/Sxjy0M9YZUPWw0x672/j7mhC58FOdvJgnQw
	a2kkhtDGe8KZa9FCMBiTSpg6WZ0vp3jK529aZNU+tMwsaYo3WdeMAL4QeZctSrEWcCS
	OMB349CqhbFyPCuIP7Ck0AT0i/4/deiurZGotXe0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018274bf07bf-0d7a4223-0349-4c1e-a631-7512c5551bde-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b09ea5b37b36aad9e6d7e9fd1e0a79c186a44c35db35ff84082efc124c4bf52
Date: Sat, 6 Aug 2022 20:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659816052
