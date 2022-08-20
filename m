Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EC37B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661036452;
	h=To:Subject:From:Message-Id:Date;
	bh=gtglxcVakolOGkrkmXIhwmfSCMNGuxUKSswZYFR5tGI=;
	b=FqgIhZc7hWYLmrT/hoeMVhyRNj6fbP0ygWuzGV96i0RJ7vSnLnNJY8cTF8U3Z62g
	FDE+xEMHKXpdPLiLv+9Bswxm2UZ6OMG2vSANm3WqJ9ZZVo6aBa1f+N4qopuf/TiJtBT
	IOZHmd8quN8NYSINXVOSJ7AfAUr5mfABXiX36lBE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661036452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gtglxcVakolOGkrkmXIhwmfSCMNGuxUKSswZYFR5tGI=;
	b=H9w0lQl9s4zBrOn5u71nL4s5/ELy1hJc/5j9DB6rplMovgu1O3NEoY4JXHqr8sCe
	y8F4GQ8KJhW9h3I8U4CVCI7r4GlLxwgoLlPyuuZbNtAhftMTthtdq43ToFsmODHqZmn
	Bsn8/OxkHyftloVaQWKrecmUDk1QmIA6Bb+NUOjs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bd7cdacd-24857ba6-cf32-45ea-9e7e-adeb8e4778c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6dcf30ec9d5ae2082c3647b3e27efb39782877746dd28b6706b97758526e2bb3
Date: Sat, 20 Aug 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661036452
