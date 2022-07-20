Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055864C6D
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 12:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658321812;
	h=To:Subject:From:Message-Id:Date;
	bh=I0mS2OnM8y6MOfYinpyRCHf0ek39RCTPX4qAIgDJKnE=;
	b=SznLhJexyDk4ShrEzU7I04W+LU1CrTZHfJorgYJTkAN2ZDjfuP2Uc4Vtfycb1XyR
	IjeIT+G9/kTKlleqOy8EBINGCR1/GRG0iqDsCLA7dn5ZlR5qQJROIe/RLRDJq6rurZQ
	s4nvVBbRZ1IW4s8LosDzq2CM+dE0gpS0wyquI4BI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658321812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I0mS2OnM8y6MOfYinpyRCHf0ek39RCTPX4qAIgDJKnE=;
	b=Fs2GwKi41/yGMUNuTM9qHdTH4K6s9PkR1Chch8SfJVymtKNqlhz/XNbt5ArOdMBT
	THeGIC1Z+MVdmdoNsdawyhDvLR5quFzY02810eyZks7Q5ajJNi3miFwsX3RGFhWuAcn
	R/+yXhvAQ4FIlucvIXFRfHpjSPv3VMRlnSaoyZqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821baebb36-8da5bb23-3711-4aa0-b26e-2608eaa993ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f36d80d5bb84a058e65e64993062e71290bd3e45c859638f0f4e2faecdf05c1
Date: Wed, 20 Jul 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658321812
