Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C54E10EB
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 03:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651202998;
	h=To:Subject:From:Message-Id:Date;
	bh=Ow25JRYhUW9HcdX5S9PRF59syqg+ED2CzCfkL2UFq18=;
	b=ZGZzgdYw39zbCWLTSx23YzZkDf99EV9Giy2Dt8k0YHjLZq5goUTC5TQOsFZ9uT9d
	wdBL1IQZbKE7gShJ6+6h0TNnO9ZdZnF0L99ZZ4nDkVr+Ag7Iioj29Dqe7eOfPrwEKNG
	2IkWx4RZ53N3rZy6Dgr3jd32P7AgFzLbLYZ9CAlk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651202998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ow25JRYhUW9HcdX5S9PRF59syqg+ED2CzCfkL2UFq18=;
	b=PevlTlvXa7KNJW7N5No7tsd2lAAk+7nOEPmv8IxBP5iIkJDgfRI/txldkhX6cxhY
	k3DQXdH/w0er4dwOhGylT6dvkAIflGhTL+RsjXWlrs3e9XkdTr028kHE9yOfOVi02Xs
	t+t7xeBYaKQuqH2qjDF81P8GDKLFuu2z5nTXsCEQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180735e410a-53b110a3-737c-4395-868d-ee9f07f2ad78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1c33e4f010f83f37441e06b7c877b7ccd324ebd131516c765e5b58d9297b3d6
Date: Fri, 29 Apr 2022 03:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651202998
