Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AB7F601C
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658866252;
	h=To:Subject:From:Message-Id:Date;
	bh=rQnckDD+ZDgZXBVeK+WIVUdAlqVxhpT6Q+faPm/F6wg=;
	b=V/4ysCUshvYWD0tEcSofzEWhK6PzSOOwmnlkD338ElMRZGVEBi5Vlz5LbB2/Z1jt
	yiVJAplbIJGujDXIH6CILVYNmzh5++eXvB86UvO7J1AGeKX9f/hWW/tnKUp7WzVYly8
	/AApvqPjZTtHDsRADUT1jWLyJQPhYYkCF5u0QzSY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658866252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rQnckDD+ZDgZXBVeK+WIVUdAlqVxhpT6Q+faPm/F6wg=;
	b=SnRUT686rn0XZ/i4IKEZe+eMfAPr7X9L7qPzryWXY2+1uLsXA5LCkSNyi2XIFzuB
	fN3od82WaCatwxOtpyjDg4/ZMsVhVnaap7WR7V2Lih7eZVOClEckI757u8QBi/0e5D9
	fK6ZpR9TlFjFuyQL+nMGcMU9pI3AOtjIHz7HPMQE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823c223b13-433c3dd7-52f8-4250-add1-078c13dfe136-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 122efe63f624a448b32935c8e403a5f1923abccde34503fae0206bf71776729d
Date: Tue, 26 Jul 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658866252
