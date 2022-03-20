Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A1B258A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647803484;
	h=To:Subject:From:Message-Id:Date;
	bh=ZhR/T6Jw7kTuIa4xtxa+ZQlyNGxU5SB8OFtWGRZ6YV4=;
	b=L/SIf4OEoKegEdQq+rYZHyDHesG1/U8oQO4Y5lyB4UL9JLqrc8ECpimz9jNlRSnZ
	qhPouxMsHec+Y3DMQlf8IT6jZ4Ir0tbHRttqtkbD2Ghd98cVHmvlZcrXXp1ouVY8FHd
	F2BClut4MDGiLM9oc1h4d5tfN36RzstJhRX+v2/M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647803484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZhR/T6Jw7kTuIa4xtxa+ZQlyNGxU5SB8OFtWGRZ6YV4=;
	b=JGyxEgTP641thw6osKWC3j607O6HdMu9CRYyaK21AKO0oyYOIP+4LcNYHpx0nyJv
	twAjYk2GXnznEbi2fdM22Xs5Zm3wO9D1RrLnKtl1oB9YfRF41SLD9GIKnlswblq+/Gb
	VLFcccb0zx7KN32ZsQ5l5O+I301zIlyIK8se3U+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa8bdca6a-348a2687-7240-4ca0-96f3-12dec57de957-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d38e983a75c3e4207b34c7fc0ce13306e301e8bc121fa1aecc8f98c5c821006d
Date: Sun, 20 Mar 2022 19:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647803484
