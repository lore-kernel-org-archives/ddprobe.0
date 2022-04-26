Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581F77B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 18:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650997318;
	h=To:Subject:From:Message-Id:Date;
	bh=STHs8hGo1mkFUq7AsCVYpMJjULI6RH4kxXbkpqdCptU=;
	b=WpFTiN3aKtVGn/SfYZ+ePdDNZU6ncQXaVtzADRCm3IRC2dQFZrXzy8SxjJMH+HQp
	MPV9uRpkSUhIUjjxqDzT0DiWH7+QAdeSsIGQuUZt89xlDgCY9MHWq5Fg67j6nXJVa6K
	3h4bUUCWi+DzrxwrPCq3XTvvTIX7vBkVxT2dIRwY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650997318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=STHs8hGo1mkFUq7AsCVYpMJjULI6RH4kxXbkpqdCptU=;
	b=dzuUNWVgtlpMpuLFnSlj7BQ7ZlaetSHxc645d28wz9kVbUN0ikXfNGGHKgeJbDWG
	KkTw8llDv3bnQjDYnBGihXLbMvcA1OLgqp6wwcZpX2X6i/DMoM+GfTvP642J34WPW/M
	1XKcWaTiwHUkal6Zwvm89y5K//jL3Q8RvMrzCRYQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180671bd2f4-6aa1ab92-23a7-4a43-b63c-567f411244ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 125545b6a1adb2325f819bea80c0b002d2f09288b3b3b537dddae6766eafa540
Date: Tue, 26 Apr 2022 18:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650997318
