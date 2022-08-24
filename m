Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47147EA8
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661307653;
	h=To:Subject:From:Message-Id:Date;
	bh=Xt9XKb6DORroovelauj/7rdGch/+GQSN/wjhWN0H0Ck=;
	b=On6wUeUddQqsJXUiWGOeSk1UUK4+n8NXUE6kBNu7nQBLDrWxvbV/s9eQl2v63PnB
	QC9Fi6X0YYyq2gczMSF8Cwj6qbazmmVfSjpAyOqpZQUR3zsSbYvs+bRsO+3+KcXeDiB
	nVYYlL9a9Q7rNE+jPvneHnxtJv0OG9kEPwfqI5KQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661307653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xt9XKb6DORroovelauj/7rdGch/+GQSN/wjhWN0H0Ck=;
	b=d7E57cd4Ay8LqatbO4NORcABXNhepNcqMsfiTcs5ZRgr7SPmZV7VJTRmY3Z2MqpP
	X9Ne0Tou5slYLdhq5U9jio068Xs6sd4gaNyt/sB+LxDOyNDMvC4PsiJo9YBn16OSNo2
	ragTfZ/oDvugjmY4G2UUBnPSiuiSmFYFMKFqMnzg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cda709de-912f279b-82fb-4b1c-a730-90248357a3f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e5d4cbcd91a0f72d1bf6eeea5042a605a171256077053c9314408454c4cefb5
Date: Wed, 24 Aug 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661307652
