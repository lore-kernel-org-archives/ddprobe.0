Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E8323A5
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659200452;
	h=To:Subject:From:Message-Id:Date;
	bh=8QGh9CIDDOpb2CAVz3gR9HXgLhSJtbQ+LsBnJT/h9SY=;
	b=gJMaevPpalYP2gIvxc72KifY2H8Czk6+w2WUNoxyGpYo/xFqo2RO3m+aIDa0lbrY
	OeTlq/JWXhvg3rxS3PCkJcnvPbYDP6MP52IPwSIySu70i64YORPkwI3NljcnJBzuRaS
	EmaNyqwP5o/tLabBIkY5AcXlzK42FSjc1AheLeHs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659200452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8QGh9CIDDOpb2CAVz3gR9HXgLhSJtbQ+LsBnJT/h9SY=;
	b=TTVUqnUcIJj878g3tDeECjABKVfoQY9C8gUbA0y7QYQt8rV47NtPYTMiNRQ9YKXl
	CgMHaRk1wBNuETyyinsSJLovyRN4v8hkaFDM0bUFwZrZDTRMYqBu/WW5XSogY6PX4cN
	U9PMxNWDNsqp7MUThp8TG5UkmtLOGu2DOskPCNvg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182500db84d-4eb73715-d470-485d-8fc7-93c6c5c8d99c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e626966b312716c4bf4d78f17ff7767de3af10ab5bbb264407482ffe31f5da22
Date: Sat, 30 Jul 2022 17:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659200452
