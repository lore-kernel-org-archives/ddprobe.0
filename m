Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5874E17D1
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 05:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650778558;
	h=To:Subject:From:Message-Id:Date;
	bh=RDuo4d64DP6+GQJW1MmeH5U3UY6Ef8eznY5L+doV/FA=;
	b=V+6P12MB865gsUQj/q8zw4KAsHh8lOxYGQLfVKT4EUSIevKAvzarltM3MgkRYs7G
	r33HGFKzjf/Nj/QubOsSQS0FurXsj4b0tTFVBDBhftYE3aGdh2vegApZSTwZ7DZet6i
	S5+qfQRMdMPkaFEqg162eASt1WOhFL87MmxsK0yo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650778558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RDuo4d64DP6+GQJW1MmeH5U3UY6Ef8eznY5L+doV/FA=;
	b=ccCYl4LomopiTwEylBE012U7XQuR9I/0GKUZAHOF1zYel+SmOw8skzCHQOfUfv4Q
	P0l1eMCuzW4Y0knncl4dR61Q2GPPA6DAFB0OL3Nky0rqaXVWG9bbrp7ZHEE3woj1AYZ
	wpyLAbRCzrb146eEkCuPxijWAk7a6p4aDaHm1DUE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805a11cf82-cd69d261-40b4-47c0-a8d1-191332a33692-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2c81769afa0bbcc077e12deb53f7acdad7c8e026c754ed839cbd3c658495935
Date: Sun, 24 Apr 2022 05:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650778558
