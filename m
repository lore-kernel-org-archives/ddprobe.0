Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7587B
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 18:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652121478;
	h=To:Subject:From:Message-Id:Date;
	bh=IjE1YxOsgXHk1+7HXKrcP/QIV8yZqXwB/ciDjw1sJPg=;
	b=B/NSvF/EHFIjPvo+flV0KaX9HDD9G16ZIATifRwUHNRkEJZIuLfHHat6G9JkDoTg
	6icW802olW21sj5xh3Jt54EucEV9bBlA4RPc4i6G5JUDvKlUUf9gAEwjacgUuSa9XxI
	WN/WG60NFABEGRoCHKVnTiPwpqQA9woxNqIEGWgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652121478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IjE1YxOsgXHk1+7HXKrcP/QIV8yZqXwB/ciDjw1sJPg=;
	b=ZJUOy8KY+yy1ePvT2c2TLrxWoJlJHx+mKe6HZuUCJGJv8uYBuW9YOWZlPe7Wme4L
	N3Pn4/8Dv/B4Me9lxgn0VBeztSHyF4DiYGfz0iXT70E/oHQVn4+LoP7DcFrbRH+yc9j
	TyxrhiNGX/ZCY5sFSmNi1XfsxQFkSOLrYJPT6jmk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180aa1d2487-3ea645d6-9724-47cc-b600-879f4d58274c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ba7811812bab911f38817068f8538c9568e65667ddf44876b6600f920155f85
Date: Mon, 9 May 2022 18:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652121478
