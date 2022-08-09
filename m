Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666CE4403
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660047652;
	h=To:Subject:From:Message-Id:Date;
	bh=U4mlHFhvkm9/ao8argJAg2rr+XgriplParFhju7DmHU=;
	b=PUE+9zgbFKKPw2hsnobnVygPnxZpw6xwWyQvQVAsbAH1jmUnIHshpdeJU9HqojSM
	r2UhBk3OHQXW67i/nspB+d1jjbU1rqbs995KnzCjwfqKDGHycViuJ8GStjfhm3e5KuB
	JBHZcK2riI9V6diE2lQhfzxwkBJ8okTLt3kB/yK0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660047652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U4mlHFhvkm9/ao8argJAg2rr+XgriplParFhju7DmHU=;
	b=UW9v6oxkHVRj6tP8djczM8azZvJgiskL8Ok3XSj402WK3EpTBsE9TeqH2LtRCqKi
	IaCGAsf5frmZU0XhyMR5HgCivNZJITMWIJVmRGkgz8AQnIXSDsLiqq4ca06uf0/ziwE
	/v6sv3WjUrADp1GIkHTn6ZQUznm1V5FYqAr30iig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182828cf71b-37b00b87-75c9-4857-9b1c-7e4131519dde-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8fe2b8a7857ee87cdc91fcba57473bbfd817362d352c8a58a32c51536a9cba2
Date: Tue, 9 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660047652
