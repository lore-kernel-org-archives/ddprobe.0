Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C96EA4
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 12:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657369612;
	h=To:Subject:From:Message-Id:Date;
	bh=fGSBMHT0jzl7cwRSoBfCIedixWbKaXLho/IXWdmaVbQ=;
	b=DqS5WobBE+mVAL+zBigWFwu6bss4wY9Oa0wLBOaOqmBG4LP7VOfL64/u0D/+wrfi
	bmddDcucqMmEuZymFwBrgCDF3RbbRF/DELgV6qL8SRZx7x0x5LGWLHI2J8DuQ7W3K2S
	0895zztsqAnVHQozZrKMp4qQslVrnJffH+H+pLxQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657369612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fGSBMHT0jzl7cwRSoBfCIedixWbKaXLho/IXWdmaVbQ=;
	b=MMregp0Z592TH/Ny5lVYKLnhQKgN6ABIfepixaJCHsoO47Pd84aWGg9Iwn9kh4Vn
	Epr9miIxO3CCajhaGifCuVlLBp8LM4xH3rz8abZS9YLy/ZQWe3qvoT+ZkI/5JZD1E6X
	TGMrsNdyTd+HU+oqsQHgtuGTwTMUMRCSnW1w8G/I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e2ed5032-e18ceaaa-1182-4c7d-8e02-dae74cff414e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e43276843d88f796b5865c4f22f6e4736f73d76bfd8ef4fcc0fd4bae2792d85
Date: Sat, 9 Jul 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657369612
