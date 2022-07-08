Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256F02575
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 16:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657298812;
	h=To:Subject:From:Message-Id:Date;
	bh=+C+iIDJg2K3xzb/u6HXKRJFpLEOha1zyY7XQDR53TzE=;
	b=Orq4se2Es15g4y9kFEZWH9UpQZYbh+P0hjg6wwvFTgXmJxo8wNezKYWLYIXVn2ry
	ao+6YmN2VAl83a/iI6dBSZTORlFMj6tGRJawXOpyYhN1m6e5ycP84GieHDWcgBxZLir
	bh+NDVvqZBJl3BiZiSzLojcjMCWdeiyTEpjyo09c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657298812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+C+iIDJg2K3xzb/u6HXKRJFpLEOha1zyY7XQDR53TzE=;
	b=G2iudXyxofa1puuKn7bdRi6bVbIDpfY8PEpHEhFxb6YHHwkeomJvm1RIiC5M9Ca9
	EbF4XB+eEarCjd87B6myTie3xTBNFVcxun6A6hi+Iv6mqV4qg9vOD0TVnhtDoC2NrF/
	zEI4c4wZ9O+6TGGcxqQ1z1wUV76kv2SEFIKVugQ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181deb4fdfa-9da4d52f-1ebb-4881-9ee9-a3773848390a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85fad152f4c4bd58f4ed254ffe7b1aba2e442632ca7cf9d2106a425e0fb01c28
Date: Fri, 8 Jul 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657298812
