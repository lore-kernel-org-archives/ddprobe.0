Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85CCE7B
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 00:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646784084;
	h=To:Subject:From:Message-Id:Date;
	bh=k2zEQs+reNPRbs7Wk36e9NadFckBUFEsfzXlZ+BTDaE=;
	b=lwmqlsVBtOdKW4vmMaw02KbPScffRVsOB8pip/u1rUO1mDS9EekSm1iTRcOcCzK0
	bmi0CCoB4Tk7wPIQRAZq2omf33hL4DmxI6YHJe4LyZjP3vo3XTOQ96fnsd7pyHLo+AT
	6l4XxMlGxVmTC31QGMBb62tthFaGyDHoe3pAY/ck=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646784084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k2zEQs+reNPRbs7Wk36e9NadFckBUFEsfzXlZ+BTDaE=;
	b=UV2z9KuDqgtymE1viKCPwzwWiRXDuJDmkyJ2A/5Vxvh8bK/2T9FqOiGgtttHMUn/
	LTDZ/yTNUQJoArP7E/MSDgSPxVkOEMALpZzpBBqwSBLGIuI2GMTGTjIHxpZbF/8TpwJ
	jT2H0/zl+tePU9S3YY6f68B0KUsn67eNGbK2fnaA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6bfafb06-9f058ce8-580d-447e-b3af-e44e9b2fce08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85fe5f1c616f2cda6baddeba8a79ed2644846d30a50a1473742ba6f51ee22b86
Date: Wed, 9 Mar 2022 00:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646784084
