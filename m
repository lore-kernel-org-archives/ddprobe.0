Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B09A7A
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647580584;
	h=To:Subject:From:Message-Id:Date;
	bh=TKHb0W3jLiXyOwWb+nOcM60bvHylf3zUDgizmvi4wJg=;
	b=MKYAW8ArjTLJlgZceftFWNWYElEZMnErEsoU9xDbet56FjNy5KRwPCb2xj5UE5jV
	S92KvLQt5+a8wj9INKfzf7FaEVvLeOfdfV4rq7+7NEYpczKnH4v6foNv00/tOtR9vfk
	nZp5Tl/F2XbTcLGojzwCCOoTxAXdymvpp5FySwGY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647580584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TKHb0W3jLiXyOwWb+nOcM60bvHylf3zUDgizmvi4wJg=;
	b=eudpulXbRXONIg0krH2Uop3pU614iOedTYfKZCO9tuqGHUG8vnwL8TxUJRby83sP
	aMaXSkE4xlUI2yMf79HByKjZWF4Vxx2Pn5EsgI2Ozw/1l6Ubsh13/p57yzx8JLJ8UX7
	3yMNf9cl4iezfVcU2hSt0A/FMTMh9T0MEDOD71lg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b749b46-d7136c81-17c4-461b-bfad-34421e7cdeec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 766aa6e2162da8338d9c5537bc195ec2e26618d37512f52aa9ae78384b03e0e7
Date: Fri, 18 Mar 2022 05:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647580584
