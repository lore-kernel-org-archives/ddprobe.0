Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E3A17A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 10:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650796078;
	h=To:Subject:From:Message-Id:Date;
	bh=LcSP4i8Zh+ZxYkCLDbtkKV4+bqdFI15f4mD9WbWSWtM=;
	b=XqKRx4wfFvy2Gu4gRPsTEwJYIlI4+psFohioK+Pi8TlJXGJ8AYNKgJ7A/1BAYAh0
	5zZ5Sy7PMvN0LNvLVqySqmnQTL0FYzvleuP9wjrZ0OByDDm2VzDHEA0eDYQSu8zbMvl
	Zpl0wmXznpnuY5558AUB9LpC9HhkMYSGTKRW7K1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650796078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LcSP4i8Zh+ZxYkCLDbtkKV4+bqdFI15f4mD9WbWSWtM=;
	b=a6cehaWaEbJ4BJ92yp1LCI727uj9TYp5MhMJc0xrWB5W08zevF/az3A24+rVyssD
	ZsgRadY8zCCTDgrFNLbL+6tenRpwkiN/MsO9moCgJvb7Kfja+FEvtg/IBKlfz1Xxhc/
	J3YWR8YfB3G8gmEXqttSJfbb9mVtqPX+2OUHAMZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805b1d24db-57389436-4f72-49fc-ab88-161d707a78df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a44b65f18c7251a96a6a1e054e10152b5572d597510063b354011229d9db0755
Date: Sun, 24 Apr 2022 10:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650796078
