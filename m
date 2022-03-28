Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAB27C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 10:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648461718;
	h=To:Subject:From:Message-Id:Date;
	bh=Np8JH3pSL9HjTXXhQtBa+XhYNPC0DyDy71/xFlNpvCk=;
	b=jfUweQs9mEamb7mCVwhKrh/RMKydxAeytCS+uZCjdkXH9AqIyrbgNhf0830OgID3
	7yp5bjo+BQKjpcniCAuWIbNrVP+sY0L+xGZYoRhf4vV/UpPnDgZajet6lOOAbqswucz
	41RhtQb8rB91UNTSPjHzWuszRVNrwIcYbGm1iXj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648461718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Np8JH3pSL9HjTXXhQtBa+XhYNPC0DyDy71/xFlNpvCk=;
	b=YsuBuvYkR215dqIYFynWY0pcbuJc7PIPT26cjoo3OmTTFySbF017kcwqMGu6bbjL
	IwrtylE1aiZeQ0xF/kF60zwz5HUPsagvXFLxUGPsrdKkNuF/Rln8orLeIX2MKsBVXfS
	d+Sht+gkAFUB094e1f1CRXg3qdAvQOe6dGelTjkA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcff9a338-27b48e08-48de-4c69-b8ba-d77be5dfadaa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6aaaf69cf318e3af1d2a598b2dedbfc2b18c644606a94d3c824a851c36608d26
Date: Mon, 28 Mar 2022 10:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648461718
