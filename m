Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B13C1C07
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661257253;
	h=To:Subject:From:Message-Id:Date;
	bh=s+vZngbr7Rvf1j6mXOZVuFUD4LcRh2f/+lzrm0gUSwM=;
	b=Z+TA0YglsYGIB/PSl619M54OsjaCsQmYTa7U82trTnbeWk/KmLMh6ZH0gvNjXlgb
	XzLGzZ3irFE8JfK8z0m9RvBOyrrn2zTwHJzhdmm096H/T2XWFIvxF9ylhBXmJ+KkjKX
	zo8iu3+nN2oXlxbz7kvrN7A3wGyq1Uc6/ZLRbcvo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661257253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s+vZngbr7Rvf1j6mXOZVuFUD4LcRh2f/+lzrm0gUSwM=;
	b=OP/jnV4LOmzqpKAPa6Aq2QYfINtrEm64rhb2aR5tzwD0dDbwfDrI/PK8ruaCbCn0
	CV6z/u+w5oDIW1abVlORwbQs/DnmGlI7j6Wk3I3+qnxIWdYKkKp6mwfZSYJkOiSiNX0
	U1w8bZbDNe+21flBIYyVOP5TF3GIwqMuEp2nL2Rc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182caa5ff1e-dbeaf0fd-f959-4708-a23e-5f9be03a6ac8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1078f785d742f74d78b3d18912485a9e2afae37e3069905afb48e7275b5dd7cf
Date: Tue, 23 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661257252
