Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5474C5C87
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660026052;
	h=To:Subject:From:Message-Id:Date;
	bh=8mfj2RTROrslR7MC9eyFXapbUxJwmHuaHpOz47SEoK4=;
	b=O2RmZM6rXuCB04xkufpCkuY78Q8kGuzPW3pYtvvOSKrfWO03FohjJiScpGc8mZjV
	egvRrBaGn2uUhieIFJEd2oG8vwmPj9l3DkqDKA2LM1JIchaogF0bzrjaPej4yN6Gh1i
	NYI2UGh+845SrnkkphI8CAFeFPErAyx+Bw15sV74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660026052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8mfj2RTROrslR7MC9eyFXapbUxJwmHuaHpOz47SEoK4=;
	b=PqYU48QFCUdlCfiND3SumEwWhvf89v5n9USl38Fp+UroR5Un9yhROlDQKYVNjyGH
	3Eyz4Iim5Owe4M7cg4lSFUUCyrs0VOT+9plpd2RemuWDkrhnUmYUCLnHJ+LesLVzudR
	Lq1AKxeNO0WxBadi6VA+FvsKLWWy5/cVOLQYPF84=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018281436004-a3779844-4c37-43c3-88d2-c491f0ce756d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dae0d1d94a70a82f8c58e3db96c19b5e533d1a2c8e27ca9d9c105566a71f325c
Date: Tue, 9 Aug 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660026052
