Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A9D2F59
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 23:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657408012;
	h=To:Subject:From:Message-Id:Date;
	bh=Nioej+27sRHSneLRQphgWhSjssvSbmCcru+mOVbh1ig=;
	b=gpqV3xdBmiwAfWHUqKEi/GnIFKEBi/4bPo3qWx+J+ihMeAGS6c0IclyI6J6P1Qw9
	33cYuGbAi05uhrLtkJo+70DdN9RZjs/ON1zfK6d7kUd55zt55xqXBLu29RaQHLd7wrR
	qzZ/Y4UBMERL8rB0j9rLBg2uBezqbxWDAlGFCFNs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657408012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nioej+27sRHSneLRQphgWhSjssvSbmCcru+mOVbh1ig=;
	b=PMjHKjWrmsBCJg8YFlrhedq0zoVMr6Vwc8UDQsLwAAFta/kdQa+Kkhr38QzW2/Td
	kFA3EYgNbIyhg18wn7rrjwITZQLgdlQwU2WeTSCjYxIFinsxy9/ORdVxHVPicjBMXy9
	SAxdXYA3QvEGNBS8PJzPqOQfLY5S08PYTzRroef0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e5374028-d452a739-1200-4de7-a04c-5a19ccd5b68f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2a4fd092bfa0e3047492f93efe90f407822db667c2e21cdbe8ee19443df7e09
Date: Sat, 9 Jul 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657408012
