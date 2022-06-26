Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089AA2F3D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 15:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656256612;
	h=To:Subject:From:Message-Id:Date;
	bh=tlT8bDt3ut5xn3oP+ziVe3o2Tt0oahEKCJWNskKVpN8=;
	b=C1d8ZbScYbFbrtZfYIcN/i4WHvwidp6FoPwd/zRKj3+p6YjSlwuGolAyqZbwbq0V
	8LGZi8xdXQGM7v8ztLnaNiM8AwPia7uQ3LVQ1uiJ9MpVmmyjLDLOhw3BcnGQBjAp56t
	rE5yZL+gFwYd8Z7ElVWtIhbseci2YXNtrIduLrK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656256612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tlT8bDt3ut5xn3oP+ziVe3o2Tt0oahEKCJWNskKVpN8=;
	b=XtTMvXGY49fwrc6yAEKdgI0ZEdyQUmdz3rTkx7w5ZIagU3FSly9KsWdW6kM5TOy+
	X3CAnIU+qJ5sgry2bme5ET0g56Lu0tFEPwgVRjT91o946jhMfEOzzSYMHFaOpqMdeHh
	ID2LMF/IHgE0k9ZzM9h+qPgZhY79rOaQLcmTBWh0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a09647ba-93e82838-d9f3-4127-ba6b-573b879b62e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b049a7b73e1becac7ddee77e0a0e6afc0f06a6d2ef081e9aa0b35ba5b73c019
Date: Sun, 26 Jun 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656256612
