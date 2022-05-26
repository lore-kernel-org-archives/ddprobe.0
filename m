Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51AB1368
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 10:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653559799;
	h=To:Subject:From:Message-Id:Date;
	bh=yUHaHU+8FzEZ69Bp8ZazT6GWa3krDqTROxhf2aQ3tMY=;
	b=jaDvyoYntoRGiRNgUe7UWjJ8hWOqDk3qRrWdfQol82rls60q9NiDb7WZSoch0QjS
	NRA/Jx9HXNxVaTKjkcQd3RAo6525ppw/KlAlwsCGdrXZ7UxVSsS9QyU+tLns8P7YjOy
	bqd2VYmS/SrPqOYIq1I4AHvHcsQNQHyteGASVBog=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653559799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yUHaHU+8FzEZ69Bp8ZazT6GWa3krDqTROxhf2aQ3tMY=;
	b=gxzbbKLBBrRvtE2l7lMD9M/Mc+2aTkAsjxawOunfU9kdunaLwZLgLaTfZg+0a5RV
	nKzOPqWYvEkj4v+CmHvMx/kyF9c8IwtriHZ9XUybvJleLlQ7Xl9CXLDQDrlfKjjL5zX
	A8CkgFa2E033tmf8eXuH0MtsBxx9eOp5S2xjamFk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ffd82dde-ea95eb2e-1a76-4d0a-9671-26869c38050c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d125568f12d44b44bfbc6b3e58435bce0d63b554c3f311fc8619c7ecfb7743c4
Date: Thu, 26 May 2022 10:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653559799
