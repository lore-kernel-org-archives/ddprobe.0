Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 698597A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 16:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655223179;
	h=To:Subject:From:Message-Id:Date;
	bh=zXEh9zHih4VkMZjBXfktDXSCOrKWPOuZ9UqKggAz6A8=;
	b=IFu1BU+sGkXtnm60pB9BviUWdBD5mfROiuP1To6oabcy3qY5u4unefqZN5T/o1Y5
	9AsMIO5bhCxBr9HR4K8YGG40ZfmutuYRvAb1/yxKTwCOFB4Lk/XAFPB0EM55z1jKcXk
	Edv23SByQI2wenfew0yXxGM+x5JfKFUZWtGBK9dQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655223179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zXEh9zHih4VkMZjBXfktDXSCOrKWPOuZ9UqKggAz6A8=;
	b=UIRVtkecA1bpx4dgpg63Va037ZJ3Ck/bSpWn8MKMlrm/zUnIiqRag9R9B3qoOtXD
	b6oSvqtEeOyR950AyFETGj/KASEgo6m3yTiRDCE8IKCHgbk9gu7QvrWiDouNSTH9yLb
	RWssu0zvLqgx9pBuTi4s/6x3e1A5NYArJnX+suwk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018162fd57de-4e32e5aa-e1d4-42fc-931c-e7dc33725ddd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdab5823f8bf2f75da30ab9aa0a0584ace2f78cfcccc4367076055d8b71454b9
Date: Tue, 14 Jun 2022 16:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655223179
