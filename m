Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA292FAF
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 17:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653931439;
	h=To:Subject:From:Message-Id:Date;
	bh=ytzIgK03GKNgToXwy/C1TBBmkriqWPPgaiTBSSDfddQ=;
	b=JL35IHWfIRugk+4qxM1niE5F36Z0mT6SPoTSAl3w/x0kYRg+oMW514NVxEy0nEtD
	/aH+YmRQ77KmZaV3j6LG+gxX9zY6rkOWynxunXMH6Slg0P9B9M6PVcKTN/JQoVUBnbh
	kQj8BPIz1ZAp9YoGao+EDvWsDza8cZu5YP2TQKc4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653931439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ytzIgK03GKNgToXwy/C1TBBmkriqWPPgaiTBSSDfddQ=;
	b=cljdloipab0Wi1sdkdLJ54L7B7hY+/MVFmUav6mOsBM1ybm0SOpv2XD2ngIS0dRg
	ZwS6S397bIAzpnHfSj3IJtdJRJI/2oyoSituJ90c62FKcwCyLb52GnFWCIv9ao35ukG
	Scd+mUm+Copo+IeSJ1vunfKV09xV3vftuR7zpXis=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018115fef4b3-5a602bf9-2156-4f66-8106-137864946555-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dedebe0281e779472208a3c8a0be6f148eca35ab9ca64cb064e492f788c7cff6
Date: Mon, 30 May 2022 17:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653931439
