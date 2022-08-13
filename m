Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722637EC
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660384252;
	h=To:Subject:From:Message-Id:Date;
	bh=HPIa74L2MRbbk6/ozDeWZPURjep86SiAQqI4TaB8sUk=;
	b=Vabh8oh7xVaaLbP0RtfoPk+5P55KcCr3MXhCh/7iekhiNIvtee6a8+GO8ueBqGxO
	YIKw7zoG7UDIe72wRyNVe60AQ65zmMF2WRsiqVpbh1SJr0/kreyiYv6KPyKnSRMjkiF
	NXsZI6ssGCuc7DvyQcIY/q7rsSkR7HqEBWr5OD2Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660384252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HPIa74L2MRbbk6/ozDeWZPURjep86SiAQqI4TaB8sUk=;
	b=iUZxi1BVEGY3zPyI/MmDawhkaLQ8UyZ8qN0ZMc636hefl8DhYfk1/rpzsRLOxsBz
	iNTZvKh7Yk4wc9tbNxIUcflsHn8tdpL9QekLRTIgqBuhVhCBwVoil8chC2mAg5U9imF
	FVOyLP9g0sEzXwV7CeuZqbLgMwhvlgyJqpG/PMt4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182969d1264-82f02a05-7bd1-4d92-b885-44b6cb489be9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94d48be1e56e8ce82e95642cb532966cc985566e756d1df353a56b57f76e04ea
Date: Sat, 13 Aug 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660384252
