Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1B77C
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 11:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648897678;
	h=To:Subject:From:Message-Id:Date;
	bh=6jdjNjWPGgkFhiHWyk9gYRc38HnDlkcPEm3ZyjGuzbc=;
	b=cMNIIZnrfZdMWYHENcei99N0UAHYeAZ/wSs2zfiCqAq3wrBSI1zY8egoNMnQko0g
	oaO6YDp4yx56ECvgvjPhDdUKWkfROgZ0+21oXDBe0KUKh7GruVRkNOb+0gh8HWW2+JD
	DIYtAszs45RX26l7ftulpSeUQWE7iJR4gIBG08yM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648897678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6jdjNjWPGgkFhiHWyk9gYRc38HnDlkcPEm3ZyjGuzbc=;
	b=bO/PzJ9wDu6wKoydLM37pcSqDkTHHQD/QCFAZ0f6WQrV2KGukVIr/vMPRJ0MWs1T
	qN9OevtjffGlF+yB8P09Am/nnCumr+XkxE+UfGaMd50dkEPBncScZyK4HmXIEJQTJ+l
	S1WqQFq9rg6fDJ+E16f62CNEWfglLAnkE5M9gOUg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe9f5dbd1-2c0d71d7-d7f2-4796-ac7c-6feb5d8a1f01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f221aa02fc51a02da1a0a5e174095926b2015418fa90582e10d907efe050d6b
Date: Sat, 2 Apr 2022 11:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648897678
