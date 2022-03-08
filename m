Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622D32F2B
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646772984;
	h=To:Subject:From:Message-Id:Date;
	bh=viDRu6q1pQ55jkuErhnncV8513XmV1Dbhn36gpwcE3A=;
	b=Rht3az5oaA7/cXDst+vStb7T5rp0+IVnVvU5Fe2iuqMp0cdRsUzk97qutIKlKbb8
	sVMPl2ttLiZq1uXJcekEsSOyu2XOpRb4RmXH9bzNWft7BrOzQFHdpKbb7ykl3hCvSL9
	7jhN+MulRc5sxH5ulfwXhHp7L3V3EsJnnpWKayu0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646772984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=viDRu6q1pQ55jkuErhnncV8513XmV1Dbhn36gpwcE3A=;
	b=OmgpDboqdZjc8gCwE8BLlyFnXa8HsE19Qdz+ffZdpsIMeo0k41gmAcLlL4nbr2vC
	nNfisNJ75o/rTKGVqK6uW6KNW/cXkCwX9gc5non5M0QBmgMMvgC5opr//NhKvn1m5bB
	sSK1JeVq8VF+1e9LjyIbcxk9FVcD6LyGyDhDXdyQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6b519bcf-7dc70cec-8a0a-4167-a4db-8d6f93dc4bfe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbc740df8d012704eaaeac40e6b91eb7b577f09522ba23d7ededc9a834efdbc3
Date: Tue, 8 Mar 2022 20:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646772984
