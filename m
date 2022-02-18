Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5011FD3
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 04:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645159285;
	h=To:Subject:From:Message-Id:Date;
	bh=dbH6/NeU/3k/elAxQIHLFQ8U0IT+Wu8EJHgyggGu8y0=;
	b=G//BcNNhBvfgkxMKLscKlgNtS3chg4vULEJ/IBLLe7G8pjDSYpMMDmYw6kaLjKQr
	18zlWv84ERycio9c3A2pFf+xdvjrl+sUvDg4qA4B+LdvY47+Z1vkimWjjEDNSdRGWJQ
	mPlJNPGVnLP0CdUuPJsm8aAorDO7Xe+VidVTESX4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645159285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dbH6/NeU/3k/elAxQIHLFQ8U0IT+Wu8EJHgyggGu8y0=;
	b=gaWq2p0SQsA8I5/LeJyO+r2yQTGgvcxua78zA9fjUc2QnkFcQU5MZ6SS99biOYis
	S3EZPLHMCaVk5k16+VUkkIIKPxPgSsG8y7rgWEgem4LwuTXncRUU+uR10DnhOoyZKbQ
	kQ1Fe9wEBKrIJ1+726DUMpo9rI/HRC8XY4QmboFk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0b228024-411cdc91-ce6d-4f0f-aece-a9a7fad4e332-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7f72afd73e68b499eefd54e5dd808ab31f5bb3637e95388ecc407d6aa113fb3
Date: Fri, 18 Feb 2022 04:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645159284
