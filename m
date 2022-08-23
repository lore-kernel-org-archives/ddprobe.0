Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E326256E
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661264452;
	h=To:Subject:From:Message-Id:Date;
	bh=0xxsWRyh/gI1rOo4XSgs6hgJkm4lOqLPuh7LiWiIUhU=;
	b=Fdx3pZBuklLOFP3uD44bZ/kTn/RD30mNUgKztnsaTMJ8gLhChpqD/GbC1xIYcS7F
	JWwzkMwXdOMMYJwRdUBKh9uSJouCYG5uyps3TdCXqOrHstQ5Bk6U7cj5OwOHvT3D+CL
	Rj1tj/DNRDPM0Gb5+6V3ZGxArQMxrHHXn7S1LE6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661264452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0xxsWRyh/gI1rOo4XSgs6hgJkm4lOqLPuh7LiWiIUhU=;
	b=Hvfc8kXzz6E8p2xuU/6/grWaY5MpxR8MSUKrvV/N4c2m/DgfedbQspkqWwWCDzuX
	/B2zGfsmedpXwfS37F6Kd+bLTXr0pZLGrp6vpAietqLQXlnSD0nj+jEYsTwqnuH/wdI
	A/pS9Oisf5wHmEGHC+YVLnW+XIoC+wh5cLAYp5J4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cb13dbbc-b8b9c754-4f4e-468c-85fb-cb14dd47dc78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 001c8baa4d35eb89aa64c3cd9e39c6cd19f503ac2ed1adf099d735da21bda696
Date: Tue, 23 Aug 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661264452
