Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D42C1866
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 14:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648045284;
	h=To:Subject:From:Message-Id:Date;
	bh=oYMY9/v8umIVQubXLPaSJKe7Fe+J4M9oCaf57m2w9vE=;
	b=GMFvlGc3nGYvl6yC7mC5AcEU/Ym71+91GZJ8e6qHuXGLWZGPhqi7MUJVU9ahpq+x
	NZO9FCJW2R1AvVreikZ5Cge0CTJbaixBN8voVZbLEPdaUMnRtT2xDWMf5Ox+hRhaswR
	BMeK5yhSPMPKnW/3T+xItvV2dKOd+zETXSVMmX+Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648045284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oYMY9/v8umIVQubXLPaSJKe7Fe+J4M9oCaf57m2w9vE=;
	b=GqnWIxbsZ+eQfWJqCQm0ScR4LRm8V0dKjHgDbM2sIgWwAe5wmBzae4HXr0k+F2hM
	uUlkY1TnUGyLfqhEkZq24EAJax7q7SfWsZZoT/1pFq6T3zzZhhxsy50xRWUaTddRWxl
	DiQHJBEh6Im7ralYLyjUblTbCqAvhtny+R+9Np1c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb7275d85-5bb3c1ec-9b34-4576-9d54-1830a86e00dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf6b0139a828cad58aae6aeee539d1b7f024622f63a01888c376593952277117
Date: Wed, 23 Mar 2022 14:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648045284
