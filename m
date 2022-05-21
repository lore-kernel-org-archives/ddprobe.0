Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107CF17C1
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 04:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653105959;
	h=To:Subject:From:Message-Id:Date;
	bh=bpmQ/Jau5YvW5/XTjCRIzOzcVlRFy4ctgK+Ud+BA7iY=;
	b=jlbHdC18DQF15afAzjertbJOazEGZJQ7DX/qY4IoaPr+VdIGopji3Mp1aYDAPP/g
	Gd0XrZVHIfMigliKD82H7QvYnUEz+UlQ5MElu1aXyBBNEtObuFQMIUv6jAKMqadbnFe
	GOB6nA5JOGjO/aCHcFUrTXVkLXuvg7+0oSQ/TwQg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653105959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bpmQ/Jau5YvW5/XTjCRIzOzcVlRFy4ctgK+Ud+BA7iY=;
	b=GDxl7D2RN2WXRW9hB+Uri0gmw5gnLLOppV3H59/XQNShm5BPMMsz1kMn82cWTus/
	MpGEWJMTadgm5UK7d1JdrdlzQW9q36K46ETURJci8igSM5RJmzYIe8T906hb0NOPTZz
	wz9CVO6Dor6t/WzKSuAm7UzTrzJEaWCQWiQs6ZYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e4cb2177-025b9cda-d9c7-44dc-9638-be748bf9f7cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3aeb4afbf4e51e51eb4f89e905f0e233c5490d479a176e94be2f03f827e581e
Date: Sat, 21 May 2022 04:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653105959
