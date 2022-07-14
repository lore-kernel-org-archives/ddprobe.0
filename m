Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86BD5198
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 01:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657762613;
	h=To:Subject:From:Message-Id:Date;
	bh=xawmjIEeUd0vj1YL9sDToMovuFfah5DIy+O+UakfvjM=;
	b=ZRagKyVvTYAu++V6oKdLvBO9rc+Gd5HVz2G8LbLZdSlsFYqI/MHhsE1INHl2jMc2
	DTI5uJ5Dx7RczTVaJ+dR96zbKVMQUqpSS2jpKn+FGJxRdZ6nBp8mznhJHfvojaCi/oD
	l2OoLn9FeIXq5r3Cf2z0gW9bbaXeMh8n1b5Bplgs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657762613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xawmjIEeUd0vj1YL9sDToMovuFfah5DIy+O+UakfvjM=;
	b=K1zx4rMIAUwYso2Nw5Bx9dCrUH8i8pjcOTbHfwYAHvUWxI8x7A/LCN1o52ScqeUW
	iBFVhMisiE16Z2096jk6IHDG6U9qD/1SfMBcmiLwrRT7Xkin1iQ/8JAfGryJYRWzp1f
	KpyrVfpFZNKSSfuZGFF1LkBo8vX1AWCv8EHxEjCQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fa5a042e-86cf6c25-33f8-4b9b-8bc9-da2633732614-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92866e0ee25532be6a8d8df5cfa9e98f44b5e99215177f60c77f53dc888f551a
Date: Thu, 14 Jul 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657762612
