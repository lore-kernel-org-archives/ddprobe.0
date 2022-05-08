Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2445210F8
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 06:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651993198;
	h=To:Subject:From:Message-Id:Date;
	bh=gGXqyzp4+md/aZSUH0/4drr7pw2bWzJKnZEiPwHx1Vk=;
	b=k79TN5xynj79M16rsrHizVwlRyd8mQBsO9qJA9sSWI0cIG7euckz0fDz9WjJgJm6
	tpuYs9iPtllL9T+9ZdCme92e665Aj+CdYIU5WR5JFsGrw9qQ1E/E4PJFVepUMH5cQ4t
	/GzgZO4FsPOzddIWfbC60R1Bm3LbZih47UvmM+v0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651993198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gGXqyzp4+md/aZSUH0/4drr7pw2bWzJKnZEiPwHx1Vk=;
	b=Zb3SFbVp4U1OvQVZ0eaqjMxqgIVBKwQsMX55IZO7qVvPGy8tDJ7fnn6Sz6lhX1VG
	0xI8k3xTSIttthcM6kM99jmvJSIxQgOwQRKMEfc3uGDmnQyU0ptKpBpjKvsq5au8yy7
	widdWMVn8yaKS3ekIrCOQAQp6r7Qph/b19r/k5Ew=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a277bed3-33656dd9-d03d-4baf-8f12-96f0b4faa3ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7593e0731eae29627183bc4f7d7f1c79e3d15613cb819e258431f20db1371ec
Date: Sun, 8 May 2022 06:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651993198
