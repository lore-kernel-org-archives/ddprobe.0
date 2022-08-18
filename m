Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83513440F
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660828252;
	h=To:Subject:From:Message-Id:Date;
	bh=IoX+I4qaYUJNIWZ1gUXdRlXrnOJORj6AtRUaXpDaMKM=;
	b=OSrwgXG2U1j4syT3z6OpijhTYh3sIvXeZfh3iOFHv4iwMI8zNgwRZcZHW6jD5QfL
	ON06zmk8EHEVB2BCEL9Wyyb2Xh3t2ARy1P7brGUFReT+9PhogfaABGL1VdYZptWaTC/
	4OH+OSQ9WA2TSxgC01h+XuMBipDHQw0C1J+4ZZJ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660828252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IoX+I4qaYUJNIWZ1gUXdRlXrnOJORj6AtRUaXpDaMKM=;
	b=j564ks0wzssFu5ECTkhLocZ6wKctokdyd7KLXl56pgSjyTy/KrH2Rnk6UzijYy5/
	Ih/SwRJXVcVVbWjJsCuKcAeXg+n3aGcg4N70r3tCuNFsojuFqeXU660/xZGsd6axNXw
	1jFYoElvDANd7te1oFDVfqbUk/W5P58AzwNwVN60=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b113f9e7-8f4bc612-6cd2-44ab-b490-1ab641e3c175-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bd2f9be838b62d6328b63c4e8a85d943bed0540fa9ecbc5827d95f554963d0b
Date: Thu, 18 Aug 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660828252
