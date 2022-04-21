Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4311FCD
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 17:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650561838;
	h=To:Subject:From:Message-Id:Date;
	bh=YwIIRyEDWDUdvsg3RLijJkY4x8/uHz1y7kXtyeH1S6c=;
	b=G6r7khqDctX2xOCUdUHgVEJrCu6PWoxpzFGFEw7sIlGQWqZAc++CbvYH7x+hF7iK
	FJ/FCPQe7Veiiz0tHZyDAx903t86Vke5zPuFgryrlxMn9PqL8wqi6qDR78F6ra9aD3W
	11wJDWzqPptP9wS8iEGqeLzdrCqvNfvdHStpQZMg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650561838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YwIIRyEDWDUdvsg3RLijJkY4x8/uHz1y7kXtyeH1S6c=;
	b=S94+cN4jP34VBPWAA0j+iQWx8wdadFkOUgsai2gDV27osiI74kUpXX5vKRlBMY8G
	ZC8Gm3kIRx2F/mD8Y4IHrjhj0tibvFmIYB84vkpR4E+CLfQOjeEcaDByJTvyyuTdVGp
	J5AZkOZY7tJLCRh3bcIome/q8H5zRZW4tO08sg/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804d26ece7-7bbb16d9-9e16-4532-92bd-baba5e47652e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22c6399419b1b4ffd4b90c0a20af46c1d9b9d8baac1a97d0b15fff759a6fffd2
Date: Thu, 21 Apr 2022 17:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650561838
