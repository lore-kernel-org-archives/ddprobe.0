Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4AEECE
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 13:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656595012;
	h=To:Subject:From:Message-Id:Date;
	bh=2IhGTOKBTNs3Z1qhuy/khSZ2vjh82fnOKzE59UdpLBo=;
	b=FWo+9PkxNYlLDtYmlrHW38sJEvfDCWwGJPGYsnpuwqaLQvoAK86aOVG9Fiu/obZO
	K+6m19HJGPC+8NvFmRSIg3OcN29xXg3MfbRCShBbWYHtPZro71eYstANufyVYvZV72R
	TjQjOry69xz6KULkFxc+D36Kob2m6Lo/S9sjrdC0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656595012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2IhGTOKBTNs3Z1qhuy/khSZ2vjh82fnOKzE59UdpLBo=;
	b=Tyy71ZSxGnfpd2D+erEjzVWHAdASk3ui4KKGdAafT4YrQycGjuVVa2K6LorDn+do
	Bo4sBUUUFso5HpVblM25DZ6D6WPFEWGOTPu8kv2qJ1rqgpFHONsKdo5IaFALZ492Bin
	yYzBExG7fE3KpTNNvbCRiZUoYbjqeVYiCOKZ8DPA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b4c1db1f-a6e2bbbf-c0bc-435a-8df1-939a61ab5d36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57c7513fceaea948566211904f5b8e94b3eab26993e5e27e1ff9cad0fb4e97d3
Date: Thu, 30 Jun 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656595012
