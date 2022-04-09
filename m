Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FDB622
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 08:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649493058;
	h=To:Subject:From:Message-Id:Date;
	bh=qNJwcYgk1NdetiQtsa6FsE0rRQd5xdJfZWn37ikSHJc=;
	b=TlD52WSrUhSPI4a5D9nj+r7WNotGeV9xrD7+evcGU4w10K+DHvTb468TB9H6dYfC
	EgKsdk/qBue25fhMLOiDAMUqNPaCZdaZ2sM3hMqM03/fdCXgdOEs/w61OFZO6mpzmPX
	fMuGGwDmOhbp6+AJb0hAYC0vW/otjqeWfuKM6SUU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649493058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qNJwcYgk1NdetiQtsa6FsE0rRQd5xdJfZWn37ikSHJc=;
	b=YOIVdMzDFt5jRwNnnBEo3vC3MGBh3aMVNz6kEm8rM4WLgEU1ovcaQqSwJsswUH2F
	NCJeEOtnm9dEWrRjjoVZcz8GLrROU9aHU36hac5ujPFsO98XiQoKWrh9R5Gwo0ml6xx
	TH6F57+ULqQ1xxKXq2V6gTaGFs7n5dtl58pmoah4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800d72a2f2-a2053b43-2ae6-40ab-b7da-efc3af07eeaf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3da3ab16680ad346d71390964ca325ea6176034debaf1a346e12f5e01204e5bd
Date: Sat, 9 Apr 2022 08:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649493058
