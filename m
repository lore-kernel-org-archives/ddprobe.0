Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5567C7E9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 01:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656552412;
	h=To:Subject:From:Message-Id:Date;
	bh=2jkqh2Ra6lgBTu2Q+wEUH0+eC1WZAO/tRizFkzebcFI=;
	b=GrwzJZp7vbvtx0R2P7f1sS7VEhpJrcHnx+HjQFFkOkhq6SbpuhkpEFb0g4h+CLQa
	Z0CguNgHRW0yOZU3duiOP08a/5fJoF2sAdkkxIqjR59azu0RQa04Pg0KD6ZR3+KxrmO
	3bQmjZorTvf9ckD53e+YBxR6RTqaH2hlaz+GQBjk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656552412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2jkqh2Ra6lgBTu2Q+wEUH0+eC1WZAO/tRizFkzebcFI=;
	b=DOrBE3c/meaaVhwGfrKNp62/SUrI7YygylKQ0SuDNDioaK0QDBJwvM+UfHILVdzS
	rYJLsf9i6wUAciNiUDjsWuZn0OvFWsixOdyWO/l6KWDcYLYd4LiI0b0q/FOuFD6pPRo
	dZvhTp3OfKE6F2Fc36R2Ap8MqF06k12F0360mr2g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b237d48d-e1c6dfdb-53f8-4b1b-8772-95c3bb8954a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b43215d10fffd11a3edec9a583c9eacbecec6130e9b3a00fc4ee281ae0622803
Date: Thu, 30 Jun 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656552412
