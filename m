Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB3615A2
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660956652;
	h=To:Subject:From:Message-Id:Date;
	bh=2Qt8QYF+87zzfQGVZnNTEhiBmSnyeu835e8k2/OlbOI=;
	b=brSvZZ3vGmBAKMnBM+vMAdvDfsWPIDRi49pj67K1HWqCqb14PVNQgLKaTNgY9pKq
	wSIXFaPAsD8U1/5xuUT8iFLx+3PJ809nsA8M3S1fldc72xgMY5xlRzOaHOVLA1vGu6h
	4mayWOY+nyDg9yDqbwgXW4BSwZkALv9PQlSCVcJA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660956652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2Qt8QYF+87zzfQGVZnNTEhiBmSnyeu835e8k2/OlbOI=;
	b=Te8DhrzATyCT67CtjEuXi6jWDgfG7OW76rExQ7OxC6FAc2dLwIK6mVz6qo0EpYYy
	InhAB0/cBPMIJyi7K+3nHEf8KozmUOC/Mg1rzmmTDhqdfouS6S+rRzgTek7r8iMT9hF
	Lfj8bmTnaPlh+5pJBDX6PtYCIOZvWDIFf3VzE2hM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b8bb3406-ca59c032-3869-4c05-855d-1c4e2ef040d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 513bb56e4161025144d4fb09f22e44dc38f9912d624b8625948bd06e3ed8b249
Date: Sat, 20 Aug 2022 00:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660956652
