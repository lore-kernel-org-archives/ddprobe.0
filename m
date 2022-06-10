Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093377A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 20:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654892759;
	h=To:Subject:From:Message-Id:Date;
	bh=Cu8DWo3UtYnt9aV1rocP4q5vmwY2KfSv2Lid1qvCwpU=;
	b=KAaKFNe/tygBLyOHZUEXZrmM67iqe+OHNKBal6paOQlqXEMG77mU9yT+X5x0UTcU
	u2Ix62d8HE8prVKZRAdOP4CXNLozgH4GZuCou17w5sDvDl8cwIYWdccuUUqb2udAi+M
	oPxr6jy1/z8q9EaLF1fwzzUPv60AS3H5k1Q0KOYc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654892759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cu8DWo3UtYnt9aV1rocP4q5vmwY2KfSv2Lid1qvCwpU=;
	b=AehwNdIaKIJwb5Pg5UBwd5duG9ukPQ9a7o00WPkUpRKGi0Q2aFa+jc0bme6swn/n
	IQWZLn89ftCcnVUopH4VMHHZQLHEkjjsqLP59QFi4JlYBsc4OQNzT3dZ8ky+fwHs9Zx
	vqd8CaJ0Uyj7T9qy1EbtDulOoUrUdZUczuCGrvXM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814f4b88c1-04629d90-de1f-4594-8c35-fdc73801f404-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80ec1eaed23a3c9be3c37b99a5f237d106e397c8cc222b54337ae34cb10bbb07
Date: Fri, 10 Jun 2022 20:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654892759
