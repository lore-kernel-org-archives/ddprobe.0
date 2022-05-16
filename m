Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C4A1361
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 17:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652721839;
	h=To:Subject:From:Message-Id:Date;
	bh=0xJrd/Vu7hiOnLBSi06IUXeb/nWHnadZffSkN5j7HEI=;
	b=TBh1IA3JYnzxCzeQ+gqKPnDXHuZtGDib4xjiD3IlGGR+iUqEa3w5eoQ63wSOvGgc
	Dk8J7zvdwYTvo+NYK5AbJiUl2J2iKq5FpFqs/2aHlynTpkaGJ8jcuTtczGGkKI5QOWS
	3KYiGqQ3t/d4IavE89aB6KdaC76tql1H3geOW0ew=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652721839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0xJrd/Vu7hiOnLBSi06IUXeb/nWHnadZffSkN5j7HEI=;
	b=AIb5bNDmKB60f+hbTSKJR789NGXKuGPm4SONl3d9sul5BVHi53QTVwFO0a6G9bAf
	MP8ybxnEUwKmFqCuKp9UUl0CVh34IHnoRQKfd5YtJAqRYaZ7v+hmSkDVsZMkJwllBbV
	Y3Aa6YcARBKZoNcdhlc387FPtyaYCibqn12N0kM8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cde5ece8-d10062cc-3faf-4096-93f2-5fab1d0afc49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb084241df8174fcc1cb0f7c8fa49a27f2958e0f118c651b248a540725fb2b0f
Date: Mon, 16 May 2022 17:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652721839
