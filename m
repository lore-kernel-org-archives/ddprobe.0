Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D1BEA0
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 07:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653464819;
	h=To:Subject:From:Message-Id:Date;
	bh=5DXmGCCRr+VBdWyGgB8JEsOLfsBI8jcsOLGx+Thqo4c=;
	b=IyE9M+JquP/pFrVb2b4rV292gLfcWcnqDEGy/Dn5aLLFco4yqEoTjtHIaa8mBx/M
	QgcNm7Vl81YicmOGs4xelM4LXlcLOaOw8oVSmoSB6rxn9JIo+1TemM0fp8rbALbbwcF
	FxadguRiu/HnuMwkOy8T0lIh+Uj16TcANa9A2p4Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653464819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5DXmGCCRr+VBdWyGgB8JEsOLfsBI8jcsOLGx+Thqo4c=;
	b=BIhyH7I2v2bbTVf3h7L9kC6y2FuoNVIRaheit8Gy0mrys58J9NhGG5z3rrwrzuI+
	ElmskCWQd09X/be+zXqEQbV/xnyfcsU2fizEB2kmnLqL6/KEqNINIHTNbRtOdke5K8f
	mSHAeSMWyzpCwqWQHlLrlpFw8f9rRoTKqwrxYSMw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fa2ee6c3-8cb0155d-d07e-412f-9e77-ac4885f7aff4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b49b6ab0fc7070b9293a9d7632682345f541a5d56a403afff03155fa81422d3
Date: Wed, 25 May 2022 07:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653464819
