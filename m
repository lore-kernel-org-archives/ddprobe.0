Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CCA15A4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658466412;
	h=To:Subject:From:Message-Id:Date;
	bh=xHnwg+1Oh7d/QaEQzaAIOZXIRA9/BbGFQyx9WB2ckLw=;
	b=chSkHq8cS9pILmN5Ft/KM9wVwt6DyPCS9YKJyt/t/yj5g3LzOgSjtY6YE03luviV
	bxaAL7gygoZJpzbw75D1EW55bv3CvMPn7tBiHvNNDPsrbvbH/lsSrgHWXVWMrhMM9t/
	3bna3gv385rgXP8U2bnpfijgdEnwDAhzjkAbDy/o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658466412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xHnwg+1Oh7d/QaEQzaAIOZXIRA9/BbGFQyx9WB2ckLw=;
	b=kvbxKMpoPv9yFVHBDbGrWhzzYe4klM6rdWHk5JO6yz7NiEFZt8jx1oCsukiJJBR8
	ZkRXPw4Cf99Q+bVpND9sGV0fZHDF59loPXnZJjM0vwIwDVaHQmhovQmuDy6Mod+o+W2
	x43GlyLWyjQfzDvYrpII4CYzzmNF1SkRGOCB9wnI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182244d270f-0c7bd7dd-95c0-4689-9a82-b5acf0b5f359-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ff16b170f8b96c4dd80ee4d9fe314e081bd46b8faf81a98135937887978ed17
Date: Fri, 22 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658466412
