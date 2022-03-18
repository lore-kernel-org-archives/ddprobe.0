Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3D22F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 08:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647593484;
	h=To:Subject:From:Message-Id:Date;
	bh=z7JW5HrEHgXTzMh81WukIZ6AHb82z3WQewd/q31VcB8=;
	b=Na2Grr93bFjKVRL6o8gZORd0WghBi8M+3kHzX2je6dWK9teXBFO5kmWR+fTnaEN2
	GKjmAASqw6CV4vcJrVJ7ObIcb7o5CdLR07wxNmIksq5G9kJPKt7kiwJ1XK8Rg9YgPke
	DxkKkwooamx4ZBzk0snedkIhMYHMU9l3A7VitRWk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647593484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z7JW5HrEHgXTzMh81WukIZ6AHb82z3WQewd/q31VcB8=;
	b=c/QubEJR1P2AXkXPm2n0hG4l5vKlviYnMXXyEjInaoQV5D08Q6JY8KveDYHWRJWr
	YsgZY9IQe2PbMxSfj2177YyFr8XkKKjiiWvmKARFlRoocBAs816agmO8lNDnGmasLYx
	0GLj1S2kmEiI5gnsBqn+gM6zhBZAq2/CVO0gu/b4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c397207-b7f8bd28-dfd2-48b9-aa2a-6a7abe121de6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39fc8557bbe511f88229a153adef5964a16701bdd6c34160d1fcb0fdffa0519a
Date: Fri, 18 Mar 2022 08:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647593484
