Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3897ECD
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 04:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648009285;
	h=To:Subject:From:Message-Id:Date;
	bh=SUyeintvCyR+e+ZzG2GZSXi9bh+BUjleuJpbpRXPWt4=;
	b=FxKDdM9i1FM6dn7x+8rBuOPChnYJG7IyAoep1Ufdx3AC4v8rCq9ygo/mAiVrFXHf
	/k/KE9XEaRt73lUJPVP2fcHotvN422nsxVTC0xACguntitzW3WSht3QTUyGd7Yc5EQX
	sWWqXTDENnkRDGnGPlBNgXICHcS5GOKSEO/kb9Ig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648009285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SUyeintvCyR+e+ZzG2GZSXi9bh+BUjleuJpbpRXPWt4=;
	b=JNr5dKVAfy4W+ZMuQ3j25oCghUBLxDApZI8aCV2mz7hgOaS92weRvYDLUbj5j0mO
	WEb+iZzxwhR7D3UsimbytatsBVAH+0/UgRZoDYwIbc9ZX/WzcNmV56oEXFf0381zpuY
	nzDT5xnJxfZDxpC0EE/NUoqik2WtI+yw9eUAKAWQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb5020c80-73f76d5a-5fc0-4a84-b36d-0e8b3beedc54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29102adb64655f8daa5bd90781ebbbe05c46117eb1f3728b9760bc5cce93c997
Date: Wed, 23 Mar 2022 04:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648009284
