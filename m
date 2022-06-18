Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3643D7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 05:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655529779;
	h=To:Subject:From:Message-Id:Date;
	bh=OANUVlyxorZxNYr6fsKvcEmxLR76IoZN4GvIYMjqUt4=;
	b=kxMvTW4zgrlvYFrjA1V8532vc0/48qw0Dw9bWrJwEN/Hqupvw+EGDPe2O774MV/N
	HKUP0heTAKd4CYV2exckCQxjPQX/Nl3qYMdVGUTNj2p46V43Orcu/jfnniqOPg75eZz
	AnaB8UHkuav83Ne/7QItix4eVHEAyAI00cESxgVM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655529779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OANUVlyxorZxNYr6fsKvcEmxLR76IoZN4GvIYMjqUt4=;
	b=QlsUR5/jOnHo25gxFeNY/ASlkFE79zN06d1hsjdkbx76fp5jKseRmyOJfNNGqaGC
	dlyNk89O2NLbQv7lLy9UTd89GSzFiSgCmFmmZWpPLBaOHeuWJiam7BJaTxXrBnCK9uk
	TBLDhJ5QEMwK1pB5rV/mfSahYFXjW4iljm747+is=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817543b032-73a15315-3325-461e-9ac6-6c043e4bec6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97d359e913bb40a3df328ea4e2751286e1c1e528309452046b1181d041662f4d
Date: Sat, 18 Jun 2022 05:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655529779
