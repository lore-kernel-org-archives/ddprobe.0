Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF766190
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 00:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652315999;
	h=To:Subject:From:Message-Id:Date;
	bh=LGE+XQ3bKikqaxVCq8d/XpfUAIRLMNe9X3th5Lm+06s=;
	b=YyINMfDr3wVF3QcBywgxIrGIeVP1+Xflyqsz3WKh0AQZjcdN/Cq3nNF0A5G9n/1a
	J0z0712iL/xW4WO0MWviHmspC3RVkAAI8XvDJRo3Ya2MARlUie/9HtnyNaphu+5hs6X
	T6naaUuck05rhaThy3HenOl8AbLf4oiz8PCGQLgA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652315999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LGE+XQ3bKikqaxVCq8d/XpfUAIRLMNe9X3th5Lm+06s=;
	b=En7R2O8RHZk0HIykwGY075WNAx+qSanap6cLf1mPIljIYZzcPXdwhN0z5oVi4cfI
	63rqeQkJ8h23CrRUD5RFMNFjn1RYHHKEiB21f2luSdfVz1ak8yzOixmlC1mpAFGEUTY
	MWHBHWflfxzGTiUaqTuMjZ1ajbJRFXrqhBL/lWXk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b5b54c3c-013c1564-a920-44a7-9c48-1e01658d3097-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f67440a9d8ff93f4871bdd77b5d161fd5a66cf8e7cc557fdd5ccf7ec590e1dcd
Date: Thu, 12 May 2022 00:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652315999
