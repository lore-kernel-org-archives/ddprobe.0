Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C3629A2
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 21:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648590418;
	h=To:Subject:From:Message-Id:Date;
	bh=BpEGR60reVYgOFlcz7rcxIu5a3YLbZ27HD0wYERvtik=;
	b=ftesvF2oz8UL5aHrcPsM3exsKiTiTLNBRnN65fYoBwy0fvqvuP6EFWu/QqujbKgo
	Vnb2D2+9kIIOmXmzkId8VIgcNr18CcHkaXDsFmM2yczY4lmsd5r/vT+X8d09YEmlVCs
	0iFIEg1T6TS4TV8vCBAEB8dM+gYWg/adJLMPn2G4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648590418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BpEGR60reVYgOFlcz7rcxIu5a3YLbZ27HD0wYERvtik=;
	b=AZMs4pzq2wYOHxt++PFpINxamo8jR/13JV8WzWDwZ8I7eA0dsbp63f5GUupHwGWY
	wZP1rhLxXbfkL0efVioCcOWIPZr7I1pSu3O4y/j83A1ms+JqN2OOdhlFDuhJwLBMAm8
	8gurQ0QPsqzXxkMNvqYBpkekRLdbYLAk9f04+JPA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd7a57166-a14ea466-5222-42a7-8650-f0add869a60d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae6a7995484845e37d11e608c1831e7c5b2cb20c8dafda2dcacc46177757c62a
Date: Tue, 29 Mar 2022 21:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648590418
