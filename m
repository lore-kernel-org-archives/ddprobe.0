Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67EB33D8B
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660737652;
	h=To:Subject:From:Message-Id:Date;
	bh=Mu1cwgydn6yxUyzgsVv6WVymSj32bXeVgeg/w+DwEE4=;
	b=ihtHxsW4vGPEAvO+6G2ntxTJBRiEOImWLalpaa5y0FfabBz/xFHdyMRIey34PYtl
	4X2Yyn88yFIvo9I5RPPK0nrBXdTC+fbWZV+wyg+v9vJfkk75SEoYyMej4+5Ti6rywAR
	aCa6KlJ08gqLf3IvxJSZNoCyDxHbzBPHVovvIXuI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660737652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mu1cwgydn6yxUyzgsVv6WVymSj32bXeVgeg/w+DwEE4=;
	b=SC2SgDMtEL2wfg5sD6/sW+DpjUQnPSi8OQF2Ka9MoeNLJIV9cAc8uN5tr6sIQUIC
	NNPW0q2naMTG+6MgtqENFQyD3gCsFaIAXqRNlk7TWISfZjYOV30lzIRsVIUjdLu1yEl
	rs2nRdtbQwuMYQ29H53Pi8lkG5759MrN+hoAVJbM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182abad8772-f33d6791-7027-40e7-9c7a-5cda34e7cff7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3109e6ff27632ac5b4a92b98d2cfb1dd6281fa0dff04ca453ba39e1df7c01640
Date: Wed, 17 Aug 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660737652
