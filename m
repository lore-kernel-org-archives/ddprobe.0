Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 737484A3C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 16:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657039612;
	h=To:Subject:From:Message-Id:Date;
	bh=j6YAEsIdTyWiauEChCl+K0el8OEoFwQ6OU/oBjYYpIc=;
	b=X4P2Bfl3ATh7CrEm9ux7U4aYJF9R8NVWV3UeM6xn0I0BYXaMhcHr/LNjIiEM5E6+
	Ho791seo6RG1kE+W0+cC71Of4gNyma4wiX62zsXuUOgeCewLrOMNBizi2EmB9fHf5Ie
	Yu0X06J6fN6fcI740pLggic/NKrarFEM6GkiZJDY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657039612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j6YAEsIdTyWiauEChCl+K0el8OEoFwQ6OU/oBjYYpIc=;
	b=NsUn/7zHHxSMgBX0cYAz2ZPhnU0ZGVxJl514/BfwTgX2WIfMjIjro/XRHcn5vHx+
	L3UKKFqza0ApHxxzVdhEa8fGUos3uOlNA2cMjyujI2rFc8IwuvHb4RAZ53UJfhj6AMw
	Gc1AAWjjzfmx/l6Wt4A9YPm0XrozySKY14x7RJ3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cf41e990-7a39fcd9-45bb-43f7-be56-9c2d2236d904-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a671d7f73a2648bdd12c47c790dbdd720d2a59486c7f91817275c90e3008534
Date: Tue, 5 Jul 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657039612
