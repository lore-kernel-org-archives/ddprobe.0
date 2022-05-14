Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81512F25
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 21:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652565539;
	h=To:Subject:From:Message-Id:Date;
	bh=z2RgzORbZXHM+5cns2q5lk31/tpXDeQqg8AhYj4sYt0=;
	b=WrzA1K31RgLNU6AC0dvwILCTPU6pq2rTaODIN5TYN4Uoq2hvOefIgUt7ELIuuhbc
	z8D9DGwc0akh4U02mhqQ+k1EcQ1S2Iq5v5/bV9wPH9B8JuXmtyZ0K2LX+hw96aZU9sn
	kmaDzDHN8bMCjAK9edbPmu+SfyHp6LlUN4x1MkEY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652565539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z2RgzORbZXHM+5cns2q5lk31/tpXDeQqg8AhYj4sYt0=;
	b=IQIQUEmxBxjwA264RSL/lY7GfCir6v3rhJx1lPO9M3Ne5zl3OZ8BzfbCMR1dmS8e
	dH0mkARU0Li3E2DaB/wrrddLb8nOgfex5Giu0CymipgPwktyERBSgSInzSVBeklIKda
	IKOm402rPGYTJi5GrihznFdYdj6fw7foVQoav6IY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c494f9ef-e3243f0b-809d-4697-bbfd-31357e76e338-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe7080693245dc5d9eec5eb9f0e22db75bb45556d2a4efa50cc059ec8197a9f6
Date: Sat, 14 May 2022 21:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652565539
