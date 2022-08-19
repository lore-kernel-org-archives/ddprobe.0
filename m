Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3AC7B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660885852;
	h=To:Subject:From:Message-Id:Date;
	bh=nVM2OPPFLZVN43EhUK3dGKwgf2D7w5LIwZ1dZzgptyE=;
	b=YtgRcfTwaDthkvfDY5gtmxL5RyOsSwJ+ahEN7B7POpW3cR20ZV8lxWV8wC6CNND1
	fK/FB7UVNvjFCEHZFy7w3uF25ETd/R0VOZJ77l+X1rWl+zLTZRnvJDVEvq5Au9FWHGz
	/RoJsPr2lWhiDnqGzQlcLYlVig6owzwCGh6s2KuM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660885852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nVM2OPPFLZVN43EhUK3dGKwgf2D7w5LIwZ1dZzgptyE=;
	b=VVck3orOtQ4ggrnCfGxFfLdEmReB1vjQkenXqoils80HNb4cS6jJO1JNU3HmwAko
	JGgUOR2G7AY7W3/h54lj4jf8mijYGRGesir3Qojys+pGSKHwLBri68Yk2Jc1tudKgAm
	eUVQWt/k6Nkeetxo7sJDxhO3bk3VaF2HOOj/bwUU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b482e191-5932b47b-c927-447e-994c-5f2129c36cbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8791220aecf6c0292881bf5ffeb9ae1693da93da05393edcff35efb25c49cff0
Date: Fri, 19 Aug 2022 05:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660885852
