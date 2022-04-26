Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2607E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 18:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650997918;
	h=To:Subject:From:Message-Id:Date;
	bh=5BoFbtd43fcsD82pyIvStZEjz1cQePOvyT1zdbPBdzU=;
	b=G6OS/MQ4qagK4SsuTLOca2myqd82gzkyTUxJcXTIhtwD8i8cSxb+7McPbCRFXBaN
	6ZFJL5X2WhOreuUWe35b7G6k5I0xywuTyEi8elBjWIf3ziYak1ohqZiauKPg7hV+ojr
	NSvE7IjbsGfuLaRopgt+DAAnoBkW5CKLrRAJo9Xk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650997918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5BoFbtd43fcsD82pyIvStZEjz1cQePOvyT1zdbPBdzU=;
	b=FjR+hHFQRB+/cdNk0L7OQjOMVmvbBAHXGUPvmR2N6HP4DDTv5Qhhd8ylESaqadCy
	FGnJVbvHRGZ06kfDMJ5AkQUdLrLxCWfnVAJ7Q3TSHvPwnpGV5cLX198DSndAo6J1C3n
	/g2b8Lf2uHwXIIJisQomuNom4KBCkO5h8gCu5a1Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806724fa73-184f5082-8ba9-4106-ad39-9281e6025b59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69daf785aad46e41216cd5626677578dcd71b9bcd6f025e931742e3dd17e06cd
Date: Tue, 26 Apr 2022 18:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650997918
