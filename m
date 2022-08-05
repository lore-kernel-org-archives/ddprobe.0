Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBA2A3C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659685252;
	h=To:Subject:From:Message-Id:Date;
	bh=NagHvoB26+vKv8OW0WjCIbZ3Ds7FpjO4zzc5khGrC0k=;
	b=CqnupFq/QRJV8QMS24aQYOwOXDF221dckwc1b5pmlRe2+jmZ/Y+RGOjbNkkfNgZv
	ydxLSBX6hwgshiCKavaPu1jYxlbZuPcTyk9dOkBuieXU9KVG3dt6Jk0FTMjvplmfUeG
	w+ka9iptMCQPp0e8tfw+jquMnihvPBvUXNMAqZCo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659685252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NagHvoB26+vKv8OW0WjCIbZ3Ds7FpjO4zzc5khGrC0k=;
	b=QTSZybPqMxXlyIuJP6g3rFGCu+ui1BQ0F28mIJheUoRp4MlPs5IXaIJI9Texwp2u
	FQQfgs/KMRkbDU4fEgxJBQmsrRVfmEkWPZtGo8yQGL+vyVSGKAQTGYvW2dQQ+hoibVH
	KOFEp37GFSXYxC8CJSHlighONmbkHuuD84KQuDtI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826cf32de1-2b6f11bb-d3d3-46d3-a8f2-2bb624006a81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f3fe6c57b76f320770968c7f3ef8aa3db1c88f9b54d268a83a58936331a0ff0
Date: Fri, 5 Aug 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659685252
