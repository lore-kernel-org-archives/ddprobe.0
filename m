Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F76256E
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 23:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652485079;
	h=To:Subject:From:Message-Id:Date;
	bh=/lblvdZiL3CddW3Ao3fjkJGOb6Q3u/rxuA2fVoiXn0E=;
	b=WzZqHH4t3MBCbOPUnbgrX+bUcV+1cjYB6pd9zynIRx9YTCrhuxwcwy/dSFNkOvCb
	25ZYqBt/2DEwwUHqd6uVIlc5mpIVc4ZW5t0pzfKRXY+1nQFZj9D4zNbuiA4p9agg3Ky
	2FQWmnB4edxj9yOv/TLEFdNuWP6GEc+PaWCNTQ0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652485079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/lblvdZiL3CddW3Ao3fjkJGOb6Q3u/rxuA2fVoiXn0E=;
	b=S4lhpwBfPRUJGQ3WGsfkXgCDhDLhD09rv240+yh6/NXahMQH3zIJu/3iDaTYUNuw
	cnPwMhujYBXQHjVn6yFnC9C+ojYdg0iXhVfsVUkhbP7bmSvhs0hE3UTz58zTDlo1yX/
	wR5pWn7jJpuiF80XYU4yZmH7tWIi6k1yJFxjOxWY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bfc94136-90bcd5e5-eadd-4bc0-9e49-16365b32ef82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98c355f9ecc3ecd6e8b712c0a9ad584325640958ef7b19e59865bc6a61c13c2c
Date: Fri, 13 May 2022 23:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652485079
