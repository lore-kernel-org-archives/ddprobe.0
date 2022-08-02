Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C877F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659484253;
	h=To:Subject:From:Message-Id:Date;
	bh=l7VAFmyoBaFOew0v/5p+bKhSv5v+K7H/LOWc0PbuDKo=;
	b=MlHey9q5bWDIZD4IHT+0FMS6tTR/46YeOQCa9j58HHQghOjs9X27sr+rte612eo7
	9gRbfw62/X/aPAofnhw5/nZz1f3UTleCWlmCSbg6cZXgS3Hh1zzL1l8Os3WScLJqlQ7
	FqeH8nkvbiIDHxYyxVbrunQNmVq2RNDj181vKxCM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659484253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l7VAFmyoBaFOew0v/5p+bKhSv5v+K7H/LOWc0PbuDKo=;
	b=LCUTHCKNp99H+kDsCgwAhuVwyw05dnuNlH1KqjoJa6gzhzSKOwyAM2GckJP89N1L
	nPGbXqykIQbvwzBxT/cGmBG09//hbXrcIwpTFj8DPyOkS4oHit0rXbUJVFJdrWwxyZY
	E+vC+dVfmOZcFI3S6ghka+v8EYWHfw0/1VxJ/YxU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018260f82986-a6b20ca3-5258-4efd-a22a-6e471ed0fb69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5bf1c05bc5ecc3933bd01cf5c28e2c2160b8b323bdec404bcbe75f18dbb1063
Date: Tue, 2 Aug 2022 23:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659484252
