Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9557B
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 23:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648683478;
	h=To:Subject:From:Message-Id:Date;
	bh=UHPd8mWzirJ9foP+CMyUS63olWy2Lc256W6KPxmjQLc=;
	b=XuGWC1pLCBg/KltVbsqXsnuNc78lAi3I+lyJqimXL0qXhl7WklMLN+0ICDRBAfLa
	H0N6p5ReevibtekAfjoEul/9DiBu5D+dn9zodLwaYawIyTcawD/quAson1xlbuv0uJW
	qBHVd8uR/M6yGmuIgCI0JCI+6nMVXfUIsXJgxlws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648683478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UHPd8mWzirJ9foP+CMyUS63olWy2Lc256W6KPxmjQLc=;
	b=BBspoUyxAGu7neb/QGv/+50IWUVlVG1asFGzKNE6+orRXo+gpwwO2F4ukSD/pGgU
	i3ei0ELEvvRzjTnC83PJa8sFvuzlxldVXKhr8eiAtGOA/dZBgglrTjyWOkvpD87iMKa
	pXarUkFuCWHJwQJ5DujICCgVqCyHs/5FOcfh2oI0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdd316d1c-1471b6b6-71b7-4513-b7be-9fa505e0b7b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7dc1e4dd22bdfc4ce16f583fd50939b90bd407f5514f5d20699b810bd3eccc7
Date: Wed, 30 Mar 2022 23:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648683478
