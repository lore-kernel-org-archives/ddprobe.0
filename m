Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0322F34
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 10:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657016812;
	h=To:Subject:From:Message-Id:Date;
	bh=bu2BSRJNu2xRKnZLtTcborfbdtHsJ2HAdKyGNhVoan0=;
	b=EcrjK2/0SaSanyy7V0UMe/06Xn1Kump+cDygYn0RWWE3OfqMj+PO8HwoI7zDZvPW
	wWvwOzlOIIcwkoiAH89jXP6DYJN+OjbHbyF5/glJj6Zjc87RPhxH4tb6F8v6m0N6l8A
	Q3Vy2uwcYHp1Ks1RNK5aqXKX+0yAsuisJRa9mnOQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657016812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bu2BSRJNu2xRKnZLtTcborfbdtHsJ2HAdKyGNhVoan0=;
	b=MnvFpBUrEaBZ2oIv4IvyBZsP65I7DP3U8fLpuXGIeLkDzo47N7xRSLl8G+aDmlS3
	BpoX/BaXSmwjdJex3mhPtHTFrYTAEltaoV4IvFhG9CZ2/5Jk4U5uKWPthLzi+aAdLfJ
	3i5bzImdxsiMXIuWH/kkyjAjEcyiyws8bjz4N9Yw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cde602cc-876123a3-b0b4-4106-935a-3a38a8861810-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b432107d5eae335de2265dc4465f19dbbd3edf8826f35b9cce7352aa7aee9e83
Date: Tue, 5 Jul 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657016812
