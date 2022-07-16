Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3162C7A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 22:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658011612;
	h=To:Subject:From:Message-Id:Date;
	bh=2kIlJ52GvQIPWfC2mKX7rmEKL5jnT8XJKARn28Iotq4=;
	b=HK3+B2pQf/BSgSvrZD4zy+TRtCtcKtYpC+ex2uCLC90w/qA/F5/9it8sjCddDOw5
	g8eGI72zwDiG/djVHP37aOLwuBhbw6jZFBbjKvS3utwb+w9+jwpBCCGUrNaUbdWwbAP
	CxR3Vua+TII4emwNMaKmLhVUhunKVfyjkNvhoa14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658011612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2kIlJ52GvQIPWfC2mKX7rmEKL5jnT8XJKARn28Iotq4=;
	b=KdbyiUZ1iEzF5Aq0lS30usn1O4hgMTfk/arSv7Ig50LwYrm21go/XR6HmlY3L+uP
	qLm4D+uUILGPXgBd+QXZ62e50urYQC1vmsCfi+6nlO0ASu/nydZLp0vi7JNKEQoYHzV
	C6V8QasEGb/zKoO3RXAG1rEf6HMVmI3RL8cp6j1s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182093174a1-f9d20c2b-dbcf-4686-8412-5d634e093252-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2cd5879d2f4b9dcb19c509bef754abcdfc390225a69e7eee23ffc98c9a76ab8a
Date: Sat, 16 Jul 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658011612
