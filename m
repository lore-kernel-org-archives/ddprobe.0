Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E16B7A
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 12:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657543612;
	h=To:Subject:From:Message-Id:Date;
	bh=ALrdBatBvp75pyoTFmW9ImD3gobz+06qQoLgLAKeCwQ=;
	b=JfxFJjvT6Pb2W6RGp4CIn8kCkAxnmoaMbSXHT3jqEjhHBZxrEtH5Q7kg6i5av/nk
	uFzVGoBhf8eBjpgNK6ExY4pWX5ootnbHcto+pcrIXz7oODHSZ8TdMjyMonUip+FiP4H
	NZa6RTbqkeY8vsgSx8h/yDJwRrKhaD5yTVqaN4YE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657543612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ALrdBatBvp75pyoTFmW9ImD3gobz+06qQoLgLAKeCwQ=;
	b=QhVL2yBzy7vebiVePdsMTtyZPZz5JmjRzyvRktd5+eQzt1leEWeR5gMnjK0OfgSB
	S9MIsjeRYeHWXPMOfdldyBWUV9cVkx+8/C49R5JgGDho2EOz0aWu05aqRI5BctDPhzQ
	xS1eIjU9Fa9CflDiuvvQt/POE5rXkur/EmTrpuSQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ed4c577a-3fc6f218-2471-456e-9984-dc47b8b26580-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e63cb924b4fe68f0bfc897a3add45864a17016d9a55d39618b021d8bf59a9004
Date: Mon, 11 Jul 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657543612
