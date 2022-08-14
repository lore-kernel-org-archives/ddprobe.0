Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDCFEB8
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660469452;
	h=To:Subject:From:Message-Id:Date;
	bh=V0rYfBlGjndZkDF8PgYzmgmO/9eyqSsDu1VMA8K+jU4=;
	b=CKGssX4OB8iavXFuVG999GAoBnPZ9JN3vE7bQlTp2zgliu/6GQq4L3DcDlYzXZKd
	yBUTN5R7f2yM7MvJyx8DJ1gJZlWBg/cQnSLMN6phgtnIX6OselPvuD1POX/nTiSuWdI
	LqJLecVp1QLWRBce9LYtsRqyJdRJyuzbooruWbhE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660469452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V0rYfBlGjndZkDF8PgYzmgmO/9eyqSsDu1VMA8K+jU4=;
	b=kh/tdRSOc5j/4Hd8LYcIRKoQMK1M22bt+Pi1iNmRRVy7r1mzREBWHW6jMRrzyeUF
	/vrXqZ6I4i0ZKbv/mU79XAEEScmtXX/ZurttWVvU+WUWDXfcQYG8PWDaJdfOnU5We1I
	RNkVwNRbdWMe77dKnJLyYTt9KM5qy4QdTCAQ2OfY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829bb11f26-ff4b0dcd-893d-477b-af38-b9a3439c7800-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36d1790883b8916cfeca8d60cbfb70ef384eb4656887e2cc4ac8c44f6345f0f5
Date: Sun, 14 Aug 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660469452
