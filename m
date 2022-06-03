Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E15BA7E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 04:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654232279;
	h=To:Subject:From:Message-Id:Date;
	bh=Gk7q73MLsZSEFMLVx5A1vKP9ZFZhyxgf0x6M5qdsMSc=;
	b=eOvyDLQs2S21IaMn6Qs4oqAbpb9AdcP575q9N/Bl206hZzTm62GIkDHN7u05fq0i
	TaUhWsVmsfGhp1yDEMYfvwOqjhhjya8YZZJ1jfeKODOPy1kmc7KTfH7qlhZOGxcL3Yp
	abQ21xc+yPuLVnouGuNjzL5DvFRhj+t90jH09KP8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654232279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gk7q73MLsZSEFMLVx5A1vKP9ZFZhyxgf0x6M5qdsMSc=;
	b=LJzlzhJNP0bxHqfWS+TL+cPSw8pNLG45AEg8jnku8bmmTr8/ZXtANJhTcOKwz4PN
	5KXbli2InC/T9uY5sr9rFfoS/23DHwocC6a81o3a7jGad9OQqq5hKOm6mS3ZG/m/Ovw
	p/vkL7ckO3OC0TJHnirYKzJAWB3y3xA7SOZvlD28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018127ed68f3-69e9d140-56b4-4077-8feb-4e36b3fc13e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b0373985c88073f0d7aaf5fa2430bce8e9a02e13a150c8e790c3e9639396169
Date: Fri, 3 Jun 2022 04:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654232279
