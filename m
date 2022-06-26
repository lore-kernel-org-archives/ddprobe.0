Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D557A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 02:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656210412;
	h=To:Subject:From:Message-Id:Date;
	bh=qwtr8YuPHu2mw/c4wkQmhKt+rf0TVILh5f2vGV8/JWM=;
	b=fzn8e4JkpaRgQTlN1IcegaO4xx6DtCoi0/CpS7Y5mlsZ2q6Wg+ocAeaUSR3V95nP
	oqW9XkoTS11NdmEO44VqPw+JtfTg8dt70xNyaYA0Il+iN8Sp6zmO3feoDklnMEMV3fa
	lh8GherL8jL3FFYDNmtnS5guc8imaTq8mAjqdXMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656210412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qwtr8YuPHu2mw/c4wkQmhKt+rf0TVILh5f2vGV8/JWM=;
	b=IvOq4TxNTUti7OF7F1rZfJmAKg6f8F0FQvq0pcZ+9mque7um28iOZa2Qjmj5aWPv
	gBhLjW/HPxy5rRXKwbb3tT3pJMU/rDCbcKWZo8XnzED5OL7e1d+vpTDUn0d91MvtbB1
	HTy6+o+YVOcIqkztKK29GpdVNVfFpFG4JrwcWA0Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819dd552ff-8227417d-a4db-4979-8d6b-21d4eda73ede-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa8c5bc53f909e860658e9b9975dcec63d3acd39cedd6e58b2bb58356a0800db
Date: Sun, 26 Jun 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656210412
