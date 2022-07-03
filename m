Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B4F1FBA
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 04:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656824212;
	h=To:Subject:From:Message-Id:Date;
	bh=DJ0d2bqk31rxzTr3IznDgIPKvqskM/OUtKBdIYJwdYg=;
	b=ABIEcTGctY3Y+v5MigAPG7QnfAWcIcZ0ck4gv9WgjSVMHu4K1BWLTaDGHFiadCSs
	X4hHIktsZqPFegmDAB6F9tLWZJfMUMvAmt1VtJ5setshvlQ/hfR6gjGZWFrJQah8fDK
	B/a3KfdvJO4+v3Lp1YyM6GWXZAm5+Fqf6wZx1Mbo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656824212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DJ0d2bqk31rxzTr3IznDgIPKvqskM/OUtKBdIYJwdYg=;
	b=gLxjrHpQxNKyqpsgBslNAuWOmOINL06oVez5WrNW9DLpYXWv1VZrAVCp1q3RXSp0
	NDjnRE1ZnSy47QcuA2FOFQzCcz4JfXC//ManfFYt0vdkQbKxwdznfpejACry/y4/pMJ
	CdWUDsspvUY4/wx1YosQ7Cuf2qri5EmpboMNCoO8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c26b2b4d-6ec071f7-58c9-4749-85a5-87f8451d14c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d55907d464bd582b96258e9fdc96b03c10878ff3470d1fefed114b81a13d4a4
Date: Sun, 3 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656824212
