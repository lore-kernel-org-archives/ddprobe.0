Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EE27539A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 09:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647681384;
	h=To:Subject:From:Message-Id:Date;
	bh=0UjNv5QxaoJXjk+2myY4wQtqADDgFeHkmqt7Ri50sfY=;
	b=GL1IJvS5XI4g9JDXKldC0E5vM2Tza4KTVFCHk9jwb20ItKkmTYUKSy5TSPB8qxu0
	gXUqqfCKupn9iikoX+6ma0Zx5y7NCQ2uUyqngA4KE1Yf7FXBeweZhIoG/WkZl/BQtrm
	bAGK41WOBWu7LxBQ9+mRkgMUFoS7p5XHf3D/4CNs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647681384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0UjNv5QxaoJXjk+2myY4wQtqADDgFeHkmqt7Ri50sfY=;
	b=Sggc2Tyfb/nfFCn19Z5+ArcXoqk0B+MECGYUK35Yc9n4zgl+qI02KaJ753FmCE+k
	4LbEHhqyFmIVPQKsDsKcF9Ef/JgYmg8r8nf2SNofo3Ekgz2wL/lJrnyTvjkNmzJjoRi
	FGjTqjYEb9M2EKdD2farMyLjrhyTuk9vqvH/iAPQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa176b130-641995af-0400-471a-9fb7-7237cef5982d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8935fcdb60298c06a7169e32dba7f2a566e4dc246320b4275dce3de9d885b74e
Date: Sat, 19 Mar 2022 09:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647681384
