Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CEA42565
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 14:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648563539;
	h=To:Subject:From:Message-Id:Date;
	bh=qsb+3uX+zQZ5MaIsign6dFvuqJi0AVKeXYuxPXAFsgc=;
	b=PCM+at9Ucr7WsEQA8oqAvKfRuXK/tcpr0XEIY6G1TN47REvfNwlA29t3lVInwgwv
	LLxAXo0u6phIBIXUZ+RexumNxFWgKokH47tYFBsnq64DArRy98KOkDVMthSDV9cq/PG
	RImPKsMYBnIsTqNrLSECCyKMvOhccTz7cI2lzuO0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648563539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qsb+3uX+zQZ5MaIsign6dFvuqJi0AVKeXYuxPXAFsgc=;
	b=kFcQIzq0dag0TFX55txNDoY8DMkBQVJw/YPVkwOi+a4pp514yMtUDoBT5J9+llA/
	ld4+VjRwNHqGBhTlLXr4Y3Pb9DW8jxfIjzhXh01r7YLlQM9qY76gdYDcnNjy07V/dmL
	Mn0FnZ5qYlulu2MqJH2enpb0I+I5FRMWJRw1SjA8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd60b4998-dc0cd6a4-65c6-46c1-ac99-170319fbfa5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7a8986ede4e73733cc23ebd859ec3354d47cc82702abe00c6436f857902318b
Date: Tue, 29 Mar 2022 14:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648563538
