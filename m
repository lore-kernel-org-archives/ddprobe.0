Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE717A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 22:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647124884;
	h=To:Subject:From:Message-Id:Date;
	bh=Ow1w4Rq+7AVfPD8LNwHcqj+1CAOClhQTWnco9cwqKb4=;
	b=AC1jCyUSM1V6GPxSm/O+bfFEGdpP7SKwkiwCAK3HaKZwqcdr6K3z5shCb6VubfnL
	ygn90qNBSS3MNDn+XIs9oBWbYgpijP3euxeIR2Mi0EsK0Ub31MZw/U7dQYlknyDbAHb
	mUlQSsXeCqNXSgnliucv5RsnJPWW6r/UyjQlVLFg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647124884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ow1w4Rq+7AVfPD8LNwHcqj+1CAOClhQTWnco9cwqKb4=;
	b=heXK2qkAqekVgWXNrnKDRFe1YkqOLxd/cAvimHngUUYUje5ONYUII14Ottmqqc9i
	flrjDzdf8UCqRF2sIZLOk4SNsPMtQ70JWN9L1l06G3vQaOPuCIl2YC8OoEjG++Z3CTO
	2EnGvZKFBNFxd9XWn6GzuECG9IswtTkNgtHjKDQE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f804b2d5f-9055ae16-2d6f-4ba4-8bf8-770368bd2e28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 039087e89319d5f4f6181cf04040a830dd69a9b0fd45d01c8bd28e98a1636b64
Date: Sat, 12 Mar 2022 22:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647124884
