Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D2B77A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647771684;
	h=To:Subject:From:Message-Id:Date;
	bh=qvvQ0tX/bAvt43eUJB9baV2Imr8gYSU4konHnUE+qtc=;
	b=iv69NtsUxQr0V4sXoK2cqeIkYMVLaszaWnAEjjJxqhpABT0WDzRYUWhnr0ZbKVrm
	fJmrWwX6jacqNvmbaQb++rcyhE1XfIQjvQHkOZ2ppRgTqaMh5rNOwqj8d+X3fwKdWNC
	xGTGo41nFtvdax5eiDSvoiPnu42FVgAPSSR4Zdy4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647771684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qvvQ0tX/bAvt43eUJB9baV2Imr8gYSU4konHnUE+qtc=;
	b=A6n2srHWoLyQ4GVNRoG8Rirjsb5j3AK2KCf9qRsCtJRJwfAJ4VxU4/LL5Auq3MKt
	2eU+xj8vifyQsh65jbO0K3LkvTH7RDIc4XQjbyK4JSeTQ49p3VuX/PVhwt3vqcyOrDa
	A3a3TLfHBf668tx2jIKk45lJwWeDZIck+76laOu4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6d88f8d-80bd409b-719d-4005-80b5-d25d881e8750-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02e30927da5e2300ffd51014c764f354199426559a79d9c796a0bb0899b2cbd6
Date: Sun, 20 Mar 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647771684
