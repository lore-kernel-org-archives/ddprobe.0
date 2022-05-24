Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C16E7C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 10:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653389759;
	h=To:Subject:From:Message-Id:Date;
	bh=Y3bc/4uThvpgUpTEd9L6xNbETu6pILVLLIRT9T87z6o=;
	b=ck0jWy6l96T6UrMhQXsPLD68V98k3XUPDvah6O10zGAadxJpIxE86M3BmAnEKF2n
	ZB/MMOmeTUuXH71sTQe+N2KCnlxRTsbwG/OZ0o1i4tYhRpzA2GzS6zyDJtGK9dbEgaO
	BzEGeGgL9AUOMcvlw2uKu1vhzKKeKtT/Ode9hapw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653389759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y3bc/4uThvpgUpTEd9L6xNbETu6pILVLLIRT9T87z6o=;
	b=QKvyGKBSGv0Z0l+AJat3tuUfwFfkpquENpjCnu9wlKKR1NaF8DZTfELfR8RA1mYT
	Z/WPsmV9wbdCIN0TDBHarxvnmUECXbT/OlINrB4TKF9h4bUNdLiw5HTX40oeepese87
	A8zztPbdzqgg1N+3pPIf7WtXt9rNJDbbRDX4pOR8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f5b59309-c4f148df-b4c4-4fb6-b3f3-cdde5204b0fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8204d6a2f59891b519a1d1ddc5b1f8e01e270fea3136db822c6930370b2adbb
Date: Tue, 24 May 2022 10:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653389759
