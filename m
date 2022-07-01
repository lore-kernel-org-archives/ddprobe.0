Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D7D580B
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 23:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656719812;
	h=To:Subject:From:Message-Id:Date;
	bh=BpMNOgApAxUT2PbGeZtHsizf/yi54afoSEqzT7SpgeU=;
	b=RN+xMjhPkdvIT1ZjZXf/jiRgMs7v6ltPibOjMaeMIzM8vUhKgrnEGG+9U4fvetjq
	8m9c7FzQbZ6XTmOQV4zF1vRWUMuyygHVJ4drg+OtHOcwys+np3hbgNYnI0lRPzynYmX
	gG2WNg2XY3uKSte3uu0A4xBr5mDkZwdwmtsTK+aQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656719812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BpMNOgApAxUT2PbGeZtHsizf/yi54afoSEqzT7SpgeU=;
	b=atqUXk8lwVC9LILr25g/DgEMOHyoQojA2Ilfw9tDxgAePfYEp4Vfjj8mZBN/RC3e
	4FZsKXe0C93TRXBdyAG85xwn+TNDEDOzpfscdzAreljSZ9fS3qjaNBEdvmanvwtTsOL
	Q6yykb864YQoMwMYJki7zVu9yt4AhH6SKjRRLr4A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bc3226e1-e7ac11cc-a488-4685-b6c2-5d2ea659557a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba46dd76069264b330dedf42bf5d0e8bc31ce119e7c8f7fab678b487cd286105
Date: Fri, 1 Jul 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656719812
