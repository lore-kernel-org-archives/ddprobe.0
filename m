Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060901FA4
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 22:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651358458;
	h=To:Subject:From:Message-Id:Date;
	bh=0h4/IpVdANzdLCb0zNSu5DC/DcYUQfcP+ZENu4RWu8c=;
	b=JqUg+Q1f40fp+f7ZA4PqkTYurkh7amwLASGU4H8aZoVbYKfMM3l+WyDv/TJ83FGf
	STgoxtTAFrWhnbl74DMCwk+ht/9Hd+R2F3gDi36h2Lf0NCTj+z6emr9tXQXJt2fVdW2
	jYhZw1jxnm7SkfatVZE9gBuWp+jKkXe37+S3LpYY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651358458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0h4/IpVdANzdLCb0zNSu5DC/DcYUQfcP+ZENu4RWu8c=;
	b=CSGICHJBEytMxFS5tOpPL29kZgRVv23yUdClp/5x9ybNB1jX+NA6fjLifLziK3YD
	ucR3dmP09S4iDt4FalGT8FQVo6S6RFZuOn/LKTIdrVSxQDbk0Xv3wMnW4aigDGglOq7
	OfW9SeCTo+J/OaruRC2XmZp9AyeZRp9BVZ/ZlfTs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807ca261cd-867b40d4-169b-4979-9cfc-3d6aad6ed24f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 118a2539bf9857dfe13c23845135d400d39304a490ff4c7bb004868a2075f6f8
Date: Sat, 30 Apr 2022 22:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651358458
