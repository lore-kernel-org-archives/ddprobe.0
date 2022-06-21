Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E40D1C00
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 22:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655849279;
	h=To:Subject:From:Message-Id:Date;
	bh=OdIuABtODPM8bkeTuhaKZmxlYeL+8Z2V9Pirn2M5hJs=;
	b=Th0QDAaMa7eQ5F5Dq5NsL3aw/tt2ITX9ftCgj9LRZfVvCJybLZISv6iUpZx7PZlQ
	JWrctCP8P/VknEY4hKtvGXyFzbSLDavZjxCQJhcLLf27v2iLcRSb29vHHJTjN8g5QwO
	tAYZU7CIkP7nB7Dm1jMykHCaqbzSM0QHf55blojU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655849279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OdIuABtODPM8bkeTuhaKZmxlYeL+8Z2V9Pirn2M5hJs=;
	b=YCgpgsKA8XP8+TFIDFJr8AHQ8QKmkfREuhrCFkokH4tysfUopFkOuEdcjLbfAA9n
	z8FxcIm5ca+0nk3Rzhbt4qeCI/AItKcbwK/S+1xw9xn24g5nvqRAxZdjh4n1pn/DPX8
	Y2208lkYlkPiTqL2NqkVZZVDNLXjk7UWBCs/b4eM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181884edf1a-3bf01475-60dd-4159-a5c0-892bf363308c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f144159a133dabda362f1d507063c10d12fc8ff22ffe9121c3b9d3d21ec9abc7
Date: Tue, 21 Jun 2022 22:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655849279
