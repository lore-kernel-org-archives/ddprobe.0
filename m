Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8370A7C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659759052;
	h=To:Subject:From:Message-Id:Date;
	bh=VF6b8lQwTLucyH30ALWWz90YNBBpksB0fany0XsDqK4=;
	b=VN81CiCQLtFg8IqYRdjbO5/zW207JuVIgmqvmGhUrjSMEh59+gnkP5c6zdVRvuzu
	4sy9qXYCyH5aJl/6hB37eRJi68v4AlT8eDvuPEWTDT/5IGXgFI1+K2qOtYoGkzucCD6
	eh4/+XTYvJ3jr04Df9IHqgkFjKlCCYlfIETox7R8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659759052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VF6b8lQwTLucyH30ALWWz90YNBBpksB0fany0XsDqK4=;
	b=P3gX8dT96NyU2ASnr5Uwv1CcOUKywQs3rETAkxbGAnTJ2HP96vR5rhzg6BNvp0VM
	JuHah/gFI7coRsHrFwtvquNUt5FhELMpCCjaqsWhqxwqbSZeeXGWbTX1sFF4DxARKxh
	ATGh7SEqOb1JDKQyMY+ciTM98Bblg0LxXFtO5Bqk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827159472d-7d59d216-dca4-4154-9b9e-cfd2c34fea76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2766306234c85bca75801e27a59d80955dda1728a6105dc5712e383be8c1d41e
Date: Sat, 6 Aug 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659759052
