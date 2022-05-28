Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEDC47F
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 00:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653698340;
	h=To:Subject:From:Message-Id:Date;
	bh=y/iTl7RJam+1yNsYEZOZuYtQ5F9lOH0uiZtOhyd4+xI=;
	b=PgnDy7JhgzKc6uyaYQwpVqg4pg3YaeaKwkPA6RnM/u+98aZpoufYBRU1ljFZKQG9
	18M4kpl6rlI2CtjQHDuvXeUqDxtWN5HXlTl9tpqedTw2xYSVqVg1da+dNeJkcclfHiH
	uUuYfZrrxxm96CaXNpgXnUqUsaZh2md+9Z8267Gk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653698340;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y/iTl7RJam+1yNsYEZOZuYtQ5F9lOH0uiZtOhyd4+xI=;
	b=j9RRcW0dAINJ5hJK2qANqeeAKvOFICJesqxMsHuGOtKEoUnRC7U7tcBSHLWWTiiM
	gWtQ6WNBU29L7Bm5HYb44kK1epgGtEvP58d7iEMpnMQ/SkrhOyeY4FMCO5oTAVMZB6c
	KNzl2kHexx6dxOE0oMaGHuhTfGV3OmjbsfKoErwc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181081a2263-bb9f836d-1e81-470a-9e8a-f2e6bdebcad9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ca241e5bb348fb68c3d85a12bad77afd9b66dca7b6d2082abefcc02c40e9cb2
Date: Sat, 28 May 2022 00:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653698339
