Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352B97C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 23:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654903499;
	h=To:Subject:From:Message-Id:Date;
	bh=j9YDOiaU7gbnt21awhRaZdYeydcLbSngBZlu7tmkbPI=;
	b=kbW4kYf+l6pbhNNJF5cu9OHIRbpJQB3O2QtVZsVu3Frf3qd3DnYZkdfDS+dkXCRh
	DNB1GVV8LCZNyTgnBaw6pbyarQxs9n67vlG/VrENJi9TL/Aa1zYvhPpdXEoDx15df2N
	p3AkukJuqM3i9Ft41XBRpg0BiLY2JbGPnGuTmASM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654903499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j9YDOiaU7gbnt21awhRaZdYeydcLbSngBZlu7tmkbPI=;
	b=hWa4NUdkzyGUrG5JHG4y77kfHFMYlJqjMbBSghayXosFCbuxVe+20Jjee14KN+fI
	GhTxQtGS+gcgajCjyftfhzlXJ966rhmeb/iceBqC6vFY3OF9yTVUvCm0ie5xhGIB+L8
	Oz+3JUailS+qiPLEJNhC3HgHawtnI8KgNTIIsqSs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814fef6a15-1f7c6eda-266d-44a6-af10-65d0c5d09ec2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9bc1d331cc4f36a667b8128b38f71df7ed53c462914a4f26881cb46cd627fafb
Date: Fri, 10 Jun 2022 23:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654903499
