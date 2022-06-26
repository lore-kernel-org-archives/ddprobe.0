Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115787A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 01:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656208012;
	h=To:Subject:From:Message-Id:Date;
	bh=I3WU+8oif/T1FeQ7vBiMjrFE1ZbLbNW+eYXrWpuvG+o=;
	b=d32JDrufqwGwDNJhnMX9UrWldyZONZsXKVLN7G+u495ie+65FC0ubJVfDZf6XTXX
	ygu3jcT+qjyhqm1f8ynNmQbIkoS8jNqeYyOqYwJ42x8YZSlZkUZQZTootJjCu9UcQ/k
	eB1RMyQtYzijKEwFIN2dM/sT/rZDN0jfhUl4UsF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656208012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I3WU+8oif/T1FeQ7vBiMjrFE1ZbLbNW+eYXrWpuvG+o=;
	b=fXKgVFh2fijKBGnKBqmu3zOO59KOTOYU7ZIHrf3mk45e1MZhOJGRCBUK/qXrQX7q
	TjlW0YxNMkLbEEUsYtNIx/Ngmdi/2KWSbDQ/+GqYE6YcBwDgwKVCh7t8uCKgwRTgJBH
	meQGZq+rjpXO0MXjlY80RBuglqnaxciwRGSjk1yU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819db0b3fe-be340e91-5f74-4dec-877a-6f87f1ac200d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5498018f35d1b5537f905efe747c6597c25943904489490f5e29d11382eb0a0c
Date: Sun, 26 Jun 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656208012
