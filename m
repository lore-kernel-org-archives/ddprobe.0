Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8132F36
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 21:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657403812;
	h=To:Subject:From:Message-Id:Date;
	bh=Z/NeVLSyHAPMuP1otkrWeFbLtrGTUEx2EeKOOIuWdZY=;
	b=JrAQIos6le2GgJWZeAKFP9LsPiK+gs8uKMJ1VNyGtacQzrbVdUCQTxIqcPXsOIZp
	RazYOOJ5ON7q8SF9szQhQ5hJdJ7WOdwT4c+X6ZgrhoodDuSZ/P66Kj2LdpwPywROLjR
	6L0dIcIQ4T8cx6+v4EncJ28gscsky64kCs+IdP2Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657403812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z/NeVLSyHAPMuP1otkrWeFbLtrGTUEx2EeKOOIuWdZY=;
	b=NagK6RyYZ/STAEKMulhnu1Zz1Qler76WsnQrtmqRqzDdGAvOihV/ceZJoMJ+xfwR
	ZPIcIOKD1PaLOUcHJSnKCJfFUTfFCBLDTZ2ls/cMVwg6A2v/+SAulhmfe3SLcdeXYha
	3xoq22eptY3Najnv7po9JaK537a5J4CZfrPgC7r0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e4f729b1-35085115-6f73-46df-90d0-cc6a1096da73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6c5d00965abc6c65fe4f3c20566b3da52a90dfa10d70045e3f9453e11921d13
Date: Sat, 9 Jul 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657403812
