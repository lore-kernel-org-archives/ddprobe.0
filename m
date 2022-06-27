Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AF520E8
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 20:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656363412;
	h=To:Subject:From:Message-Id:Date;
	bh=bQvf3HvxSXhM3dZWEt0mHPCsguh3UAg9WnEtDcBWYnc=;
	b=EQrywTgNziH/lfoeX8YJmiKqtoZBSgdwWggR1VfWJ9Ma8Jc/qWaAljI2+vSr8GUA
	2MRMgLFuOy9wPteXnkFcA2W0J831v4JyttTjUGfVWLAXbmVwRdOICACogkPtOygw5gT
	iJOZIhNlvSDyxQa8CwcMWv6qDJuGw7WOIhE/9aPs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656363412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bQvf3HvxSXhM3dZWEt0mHPCsguh3UAg9WnEtDcBWYnc=;
	b=Tqpz/j7FJkZejucEoWIZZMO5RDHiu5Cj7v0xs2D/GjRMg08C6yORch1PfcmLkkSc
	9cGZfgKjMM0z2CEGKSmWrYw2gm5Bk5zdlFEc+TyushOjkc0F6rG76sOHmVw1q6g0H2f
	RADknVrAs26Qw9s66XxfRpbLKlrJpnfqvrccDISI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a6f3eb3b-75ac90e0-42c6-45f2-9e5c-5cc6ef5377eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 693e69a5a56297227009f399a132085c9824266957f9d352d69c5fb71f31f6af
Date: Mon, 27 Jun 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656363412
