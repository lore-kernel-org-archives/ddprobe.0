Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261997B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 01:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656465412;
	h=To:Subject:From:Message-Id:Date;
	bh=fe4Bz1uMikvyCaXumaZLkpopnUyeKhkZkfbr2vytVR8=;
	b=fkC33m2Z/Z+SD/bzmFH+88ErVeDzhh7PDe9N1C8Otafs1+Wuiu3Q7Ap0mK5aZjHA
	RdB4za/+R4lE6eMS+D2ShBUzT3KTPtudZWtBRxsjV45nctdyOdnO0FhDgqbt59mT6YT
	Ak/993i6tTqzhjX4+pnAvWDL0Mm9v7aijUPKZd9Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656465412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fe4Bz1uMikvyCaXumaZLkpopnUyeKhkZkfbr2vytVR8=;
	b=bf9tgGBhLFAuVV9FX9aNE7Lbc0NzyJawXKbC93vLQj/687GAv2eHq0OcNs2Qk8dl
	VJl3fa0COyXYjus9xd+RyFk3To8reQwT4fNpJuUs5+j34y4rNXL03rckFbAQY71xJEy
	6f+3vkNSy3ykDNU2bS+1VnrwHolgRkQgjFp461Ss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ad0850d5-664ebe2e-bc21-4608-a538-abc100c390ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c2587902cc6fdb72db569ecdb7b8b0979ee82d2ebd21c3f5bbfed44ad1284a8
Date: Wed, 29 Jun 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656465412
