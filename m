Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4748010E6
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661310052;
	h=To:Subject:From:Message-Id:Date;
	bh=yLPuuGK+Js49pg9jONBlP7e4i8W6YYZjKlQZb8W9HaM=;
	b=lLcOeje6TZwrIjREvQawz02iiJbnwe7KDD9v/eslTP1+Pfz2YiqLjekpaWIYfdh7
	WijM9I3kZCXqk11kZp9MKylqsYVSxB/JxUmxZlvFkd9rZqzLxCYSHaca7oy/2vSeDdz
	7Ijcjw8wbmJ6gbAlb5e7hkeZZgtJfsK24dqXdX+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661310052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yLPuuGK+Js49pg9jONBlP7e4i8W6YYZjKlQZb8W9HaM=;
	b=HWO73JpSG8uwKyI+YzJF80PCEOCHLy5NBqVViTRZFfGIfIW8T6J5sJ9jG+YqGtI3
	t+T7NbN50zvNGdQuH9LZPPRuotA6rkF/G+AveL3vpdmrfO0TqtiiszAyuBVYeCxsncG
	RMsNPjN9YnU3DY/GlpLCznudG6xhPzHld/iwqKeg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cdcba8d5-471537b8-fcc1-49b9-a89f-95b7fef93d6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebd8d08decf3479001ae17f0e7e5eeae5365a63ae8054dfea21868bede1f43f7
Date: Wed, 24 Aug 2022 03:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661310052
