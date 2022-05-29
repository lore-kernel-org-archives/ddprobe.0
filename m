Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53732917
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 17:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653843959;
	h=To:Subject:From:Message-Id:Date;
	bh=e09Htna7xF5VVpsqK/Z9vX3olQh2LwXiig65tnDKhc8=;
	b=J7UW9/HAlFzglJljnOJRO/PkYfZ8jQHq3kOlwILnxnjhPwz//P7xhTjp029BYD3X
	WUEbfgEiCWpZnxPwSIlW7WME/dWQR4UvswZkTB0eiafQvI0yim71p10IzaRYrsBsxfC
	w3N6uFzLCnAYYiskMXBU17mvlF6Bu4DpA8EDXHLs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653843959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e09Htna7xF5VVpsqK/Z9vX3olQh2LwXiig65tnDKhc8=;
	b=YDQcwX61tWpTEZdQJe/98bkvnXBuLkiqdfLDOxu2woF3U77/y5RJgHLDnw7nTFx2
	jzEBrXfAUoCMRNcEpNgbk1vXd8i6T1CNu3Oyv5zZ36qPAynzOYVZRtLJ8w2ntUdt1z8
	RZCIvD7w3Lmuvn5+sIP6b3L7YKTw1YwPE5pSqjNk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018110c81de7-bc1719ff-f29d-4ff0-85c1-78985a309b5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aec4045b67908657d10f543d644fbd78bfb84fefd716ab0a4112747bf8783efc
Date: Sun, 29 May 2022 17:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653843959
