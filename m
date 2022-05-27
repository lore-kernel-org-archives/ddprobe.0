Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5CB185D
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 14:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653661259;
	h=To:Subject:From:Message-Id:Date;
	bh=4F5ggE9L5JB9a2oerzxoDYdUdD5AvGLL1wxKIhQmK/E=;
	b=jIMLj/NnQoPn7vZ7jYINMruIGIVk3MMGQyJPO0M2t2sknUJmlmhD3S+U6vBku9L9
	AQFJRg83Usjt4iaW1iSC/wcCtNBTHVgRkKqQHZhv2ppGQU+hy/Z6QV7b1jYHNytR3Wa
	zwITaa0EEdyYKnXhXYBtMJNYBLZCVl0Y6vBkbeoQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653661259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4F5ggE9L5JB9a2oerzxoDYdUdD5AvGLL1wxKIhQmK/E=;
	b=gA43k4yvkvLJbtH4ZurulS5T9FRtGIrmi6J+q/TsQRpLzWOaFtNgF39tWpx3PAvj
	fycGaTRNi7Hr+1R44R9ydwRmFYSSTp2Dz7jJmETeF7sm9cr9VN7c8c8L+F6obdolHv0
	ARfUQu0JF+RpwJIeGula4JsvmQgHJ48bkERZ/+WA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018105e455fe-e2ed6df6-a60c-419f-81b8-200a1e424a9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa8038c62380f6e47602fe46a3659b69295c466ce5aa94383301977150fe73ff
Date: Fri, 27 May 2022 14:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653661259
