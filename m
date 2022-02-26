Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D075123B7
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645871485;
	h=To:Subject:From:Message-Id:Date;
	bh=uBvcYgpQc+v1xEF3tSRVoXHpvi4TednMAyYbPWWxuOQ=;
	b=CtUULtFubUZ3nDCUv5BZ8+3JmtCvYaYhmIg4AMTBByL/2WkiOddkx1x6XIqvmHCn
	j9KuBP7LUe+G9DgfCLx353BmywnkWF/uy0IAZS4aNEk9jifsfoyGB2fS0zVX/IJP9qz
	RmmByAMc0EwUF7AlM9rn2GochQoDXlP6wqj49weg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645871485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uBvcYgpQc+v1xEF3tSRVoXHpvi4TednMAyYbPWWxuOQ=;
	b=Pq11f8YPptdNZgIqh/+gRoiAGqPnEtlow1MNAgZTHqGNhde/+PDdYoFll1w0UP9z
	TcZ4exsbyyd3jrDqSJl3TYM2hJLZQeu4TqVGl8WKbPF0MsDedlqYsqyexh3Qha7SorV
	8IrQJhiqi2UC0lA3yVhyosk2bPWbvtsolZ3kxHtM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3595cf58-9d6b0063-a567-493c-a95f-00b2cc87e63f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a87fcaaad872b2b36179cdb6f9cf377a2202b28b7ab9abf69ca1bf7fa24ae1f4
Date: Sat, 26 Feb 2022 10:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645871484
