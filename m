Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE6C10F1
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 03:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655869979;
	h=To:Subject:From:Message-Id:Date;
	bh=u4gITljuUMCHL9e0HF+o3gwNBM9o+NwIiilLvtWpCcA=;
	b=HqPwJ9Pw3d+dnUiLBCXmNJ93nRTZvVUtf1BuYVERjWFCaTdJKBWXZM9kIyQ8/FLe
	AB5dJuOVQ3/2qEzuFdHWr3O+5UjFkTotoJPes1uPpwcb2afdjtHRl4jdylskrl0EV/J
	k5vPS315jLSt9XxBE+ezlF/lmqOZzeNbcPZcyIRY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655869979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u4gITljuUMCHL9e0HF+o3gwNBM9o+NwIiilLvtWpCcA=;
	b=gj73lw6x+JyOqQhTt0HWH9QdrQHUep0nsrhpY4jY6OB3EX24Hhxu/jvsOt4l5MMl
	LGi7j6eod6LcuvIn0gB2A8FZe/eyxzgedVRGmIsJNcfwfWkmWbIPMr7bJm7FTnD6awx
	0FC8wDxZ7SJ8uA6UMQj4QgJ/JE8bsQxGc/a7N24E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181898abab3-cdff719d-9068-40b5-b4c4-aeaa92c2687b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfecdf4896aa63e279ece61f12f46d7b0123a7a0e30a8cd187d0d675908bb849
Date: Wed, 22 Jun 2022 03:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655869979
