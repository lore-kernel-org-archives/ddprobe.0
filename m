Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2147FA4F
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 07:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657351012;
	h=To:Subject:From:Message-Id:Date;
	bh=R2QK/1uQfCwwT6QJAdpNoqn665j4mAjvJmpS5o1t0gM=;
	b=lcW26VNO8V+bQUMRM/U7fJoeEAgp18EqoggcDan4H9hCZat4IlkZDKjPzAlSb69N
	cHQuui84O5L+av0YUTu4I8bsCNQyFLozSaOS97yujfdvKnXJbY/5Jtdizy72reQ8URW
	1So9exBN0Q9v6IsXntbx6eGwVKBh/sdozypsn5fo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657351012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R2QK/1uQfCwwT6QJAdpNoqn665j4mAjvJmpS5o1t0gM=;
	b=KTrYKHSsmkpHEKUXDqI3DEJn2YGOLiGlecXtUsLJKG0PAPoPuMUu8JKIHdAzdpO0
	bmwxg4YfmXIaYxQkeMMfbOm9C+6hKIy9VrYAmAuh1d4cpmW03kfODPv/HielK33rads
	/AwEwcGxqheI8Hn9/iOLcsOM4UoKOwqHgS7JwdiM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e1d17ff0-a35d133b-e34b-40b2-8baf-d1085c223983-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa1cf8075a3ed2cad191792920617ca2048a602cf10a5af6f2db8004bc7aacb7
Date: Sat, 9 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657351012
