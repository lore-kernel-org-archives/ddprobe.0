Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82EF72F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 09:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647595884;
	h=To:Subject:From:Message-Id:Date;
	bh=og7lWwm/QfLCojrUqpSs0JtZGzZnWYY3+d0UCeKdMuY=;
	b=l1xd0Zc3sbL7VGdQMHZuSJny2AZwYtukBf+Ohn6813uafYKNHUjh9YC+31rhNG03
	Mm97bTKhpVaWZlPdE5x6wPhGHXfJ5ZR+8EJZVzFyCNIwVRgezeyMjwvRB/3guOOswpZ
	lTq67M3lpGfiErLyBUvMQCsxfNQhibPM3r0yB0OI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647595884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=og7lWwm/QfLCojrUqpSs0JtZGzZnWYY3+d0UCeKdMuY=;
	b=JbHe19B7Lkw2IJeQG4hshtPlWNSLnqfrAhT4WYEpmQeiAWGcDGdKmBCkRvi0hifg
	WN3SCQ9KVCT/9Z2ltKMx6TM17gz4XS2qjheIFIl5dbTdQZ6KttJJh4kPYShLJw/xaKB
	7pv3ydP9HwpSi0IPn5frArjmUJ536cqMlusw1caY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c5e10db-61d7d68e-ccfc-4f82-a48d-51191f8eeadc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b61641022b81f176096f13f4a81f0b63bd17f8cf01054259812a64145d87d302
Date: Fri, 18 Mar 2022 09:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647595884
