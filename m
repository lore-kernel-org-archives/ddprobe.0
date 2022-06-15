Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0088523A6
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 22:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655332679;
	h=To:Subject:From:Message-Id:Date;
	bh=avJruBWnwda0SG1wusVMxMAo6hWfkNMtoQNhL1eSwpI=;
	b=dRrk4nPb52h4SI11Pns3WEQrq5+YJcZSR28HE+0tt5HrWdyWPpTWUTff0xih5Z+y
	jmqnydqxPri0QVB8xdaBb2w+BDKrPg02M8sifx46cJz36YM76dBuvdr4YV/tTCx1BMv
	wBUO0UVNVISgyztpL4W58SwSbppVXwzE6OWSwmek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655332679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=avJruBWnwda0SG1wusVMxMAo6hWfkNMtoQNhL1eSwpI=;
	b=CZmoUUjvxII8H83gPurXUYyWIVWs8Y455nT0i6oVzAKascloi8Hkt9d4np/cFyid
	/rckeU9aODfe5jizf5giINF9WFfatoJsD/9k6DnpzhpedfNQPAu5EJKQrMi1mepwcng
	PADgx9XD4aJHUzcZm55bbOaKvxcFsZnJjm2n4DBk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018169842e89-0367454e-7c04-4cb1-84d2-7e03c3379d62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efe3dfb4322c1acea2e70a0bc5990f5f92ba088b2ea65834d5f2384e16d9085e
Date: Wed, 15 Jun 2022 22:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655332679
