Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EFEEBD
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661241052;
	h=To:Subject:From:Message-Id:Date;
	bh=ivX+KEUHHuZVwrZZ8K0oJl4QnR5Vaa95awDdVS+s74g=;
	b=a1iKm1GqcTAd7Ep3db0TVmnW5g8IfgzcZPYRwhmxfemLofq0M19L4/drVnbaJSVP
	jL2J44upeDU7Mmq4M6uq9NJoY1ALD5RA80prjBhGzOoyxYTCx/friQbnfzHyqhTPXm+
	F//BmFOSKCqne5YKP6o8DVJY3eDbesyHCbrZdCHI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661241052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ivX+KEUHHuZVwrZZ8K0oJl4QnR5Vaa95awDdVS+s74g=;
	b=MrCfiuKiJ7Mli0n9x2b/YsRyqclalOm9c8q5G/7380CV+H1lD+8B+TG/DLI3Rgzf
	FHvq9kBaTAiros3sTROMImzM/xjVTPHPBjRtmJYPAcX15RYK3Xr/SnYcKZf3Xh9frmh
	t0oxKT6ZbDZN74UqutUHxYts2h9TizMP0gXtcf0I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c9aecdb8-95a3d11f-1bb6-4186-8c26-94e62b9f372b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ca02dc08801bf0723ed532bb128abb395377ce6df5aca672e3ac67b775d09ca
Date: Tue, 23 Aug 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661241052
