Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388DD7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 04:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658552212;
	h=To:Subject:From:Message-Id:Date;
	bh=iLlUuvPDR0vDCdPBB359I/yH+mB9DH+Ix6kNXgDYXIY=;
	b=WO63E/7pXWhZdyriW4dQAPx3slN5d5mE2+GoNQpjToPVe9LIUT/1cKFehjRi2I09
	5j6WYen2zzSzuLr599tEB1d/xUndRvFH3brKJKDL7Qj83uz+XwjJ5DDXmh+9hYSdL/Q
	R4HKnSzZFi0DGvpcd+Cn1bqCgLc3oUFR6245nVqM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658552212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iLlUuvPDR0vDCdPBB359I/yH+mB9DH+Ix6kNXgDYXIY=;
	b=HO3Z6yiit/ONn+FUm2NS+vlf5qKbC7FcLaOOGhqDE3aVBohOyeiln9HN9hDx8t2N
	0m9gQaFOrtswy0eVbfz2virD6nk/l0806nLMdfYsjd09xBCJlarNNNblF1yA1GHfT5s
	jlVxlnsB4ljonjfHWNVeHSXME51neSWXivHhN7IA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182296a5b9e-f76d1169-7b79-4400-9046-5b0dafc6501d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89f1171a486f43af60649bc9ca1bb64707f09899dc42ae6a86558f4e49bc909f
Date: Sat, 23 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658552212
