Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF16229AD
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647778585;
	h=To:Subject:From:Message-Id:Date;
	bh=eTPYkWsNywYQF3pI3xAyggsOwryUrAshi5dDj/fIU78=;
	b=eAz37eVzPiiOuTAUD/HVPrWiI9BLJg9/2EieANh1zmaiS8H/j6w7+a5zWoRMQxt2
	gFPTQAAmaXR2G6d+NSAif24zZLBYKTMKYoa0VWzBlnPk5abCvnQIhEsuCEatfR7hxkn
	yoky/5TH4+QtF+dJvynBWjcbYuXUgm1SUpaK0BPc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647778585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eTPYkWsNywYQF3pI3xAyggsOwryUrAshi5dDj/fIU78=;
	b=WMF+Sa1J6gqaS+FczGw6j5xhUlKXlLLWectFydQCRPX2UBsT0ZM0MKi/KXJk5hfE
	Qdbssjl3+rR3/EnCK+rkGJC4J+XmPYZeVRx72Hd1VaXApCwX5uxwCJMGXWmKhCbWtFU
	XzMQ9b1ZNbRwzgIXgpDSbKblmiXmBKqS54uwOzuc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa741d8b8-7575ed72-7e5a-4cac-97d7-de71b9637683-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca2c06d406bf6e9b6e69ebf76ee1a38c46345f7f2ca7eca3652fb4b0d297661f
Date: Sun, 20 Mar 2022 12:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647778584
