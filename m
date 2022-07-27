Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76970EC7
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658922052;
	h=To:Subject:From:Message-Id:Date;
	bh=3VD+WvHvZH0EQjGBh8FT3GC7xec+1E5WocqUcRNmbB4=;
	b=eCF/2EX5HAROGf8m5j6V4NUlv7/ObUdR0Gv0KI3vLkwzMaSZq/DE5CTW/gQppw21
	U3vO05NhMlqIt/yDAHKQcXIN4soi7jr/mWkWciHaxyczow8XBiammuIR6t223RFfZ3f
	pkwan6qGFVQ3KZbnWwTdakm2sclzYtXJD/+h/89c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658922052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3VD+WvHvZH0EQjGBh8FT3GC7xec+1E5WocqUcRNmbB4=;
	b=CXgSABd/2ePq2RVbzj66NUauXPNcoQc+20jBTUyMhwY1A/EXnWxWHWQlpMSNH2lD
	fjoxKfIkCvcpNDmtJ59nggYwsmahjqYbalsg7jCChpFPfwcvLpXa8XqJviQB2yl6h8F
	g6cSyL5FtWYShkt5iqxGItFGux4LAXwNoQ1M0Y2w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823f75abd7-c8ac8817-6176-4503-a14b-ffc96fe97365-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44913357ec406ac3be35f2b8ea1c45535e39ffcf09832f3e86026d57a4aa6b19
Date: Wed, 27 Jul 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658922052
