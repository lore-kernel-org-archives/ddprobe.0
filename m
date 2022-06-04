Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF90B185F
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 19:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654371899;
	h=To:Subject:From:Message-Id:Date;
	bh=PzUe+a2N2s9Yc5cDUCbMAirsNE7XN3nWT111mae5rtE=;
	b=lLRg5Y8AqN16I1/70oz8AyqZuyKfT39S7Tcu8shtAEkwQF/zuDFRnnrOmMZ1n1m9
	zHVLFrsDQOmzlQpDg79bI3Deow77WabsxK0qD/pxVEritBNGbq7vS71a0B4qbrfLRAY
	9rXKRQvMOReIeI/RKnW340N+a4+8DKQX3XtQ7XfY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654371899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PzUe+a2N2s9Yc5cDUCbMAirsNE7XN3nWT111mae5rtE=;
	b=j6A+MtiD5vg7Ahb8w0TaqENP5EgoUvDVL2LYdhkPs3TL7uCK0AsqeoSIqBY52Abi
	9WkbWUQbBZIy5DQD5n3RChL4aGatusRFVSwNUy7St72FVW9l7LMihjCV6+sMFZqeXGK
	F1m+PHucihLFaCd0RTgVn9Npg40Se1aLL370MzCU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181303fd779-c841adb6-7c21-40bc-9122-0de91c410f65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e35f8084970f9541ee2e3200708defc5717443fde0465b5223686f2d5283a77c
Date: Sat, 4 Jun 2022 19:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654371899
