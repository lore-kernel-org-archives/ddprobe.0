Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D99EA17D2
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 05:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651555198;
	h=To:Subject:From:Message-Id:Date;
	bh=fcW0iX6utoIBFyYudIfjO/sE4Ttet4mhsKovNcy4/64=;
	b=Tailno7MpobVphrCgxZdqbkMsZ9UeM/LVrTHGdAsgB20gE+REU/g/ndCIffs8KbR
	vMp/A488lRRj+Wtad/gDp9VMzP/YsjHLPeClcD/2eAMEmHQ87jDLNPfWK+CtqNmsj7s
	XKMesAhRrhbE1nivBdH3klC4MbeX+xnzlKpKsNPk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651555198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fcW0iX6utoIBFyYudIfjO/sE4Ttet4mhsKovNcy4/64=;
	b=dJF4iKn5VLnHhEP3NJKnNbK2toXIX+0obsKYoXqxzmRwm3FZ8wEJyG8yYlbARocG
	T2w7MaHgI3XNp07D3v6mX/ZCXyDsEbUv9USGkntiiwKu06vVoFtoUUKEWrO6OUF6sKL
	iABVxetdwGdUIkv4XKHHZ4gysSBsirbMNO3oI0qQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180885c6527-cc5a0a6f-7436-4c13-8c50-3795ef1336bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 616156a0acd7b57375a57b328809c1bde8512f735cfa5f28798e0732d5d93001
Date: Tue, 3 May 2022 05:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651555198
