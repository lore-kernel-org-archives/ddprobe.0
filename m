Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A94623A8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 21:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656018412;
	h=To:Subject:From:Message-Id:Date;
	bh=zCn+CR4n+1fWvu+wb9NtPZ0svLyKoE+1jpn0WbaWMPY=;
	b=dm5eiaseIXuJR3yTu204KdblzctZWyJluIjfFAvVwjqeNzo8g73IO3Cz8LoV/USz
	Jz0vG38WJRpiOSbqwEYaM3WTR79EXhIxwbc6kDHAq+JMPRw1TrLrf1cGcHoZLNF5Nyy
	l7pU/04nbYe5A9F7YnzdAflym1lMjzxi3Z0I4mNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656018412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zCn+CR4n+1fWvu+wb9NtPZ0svLyKoE+1jpn0WbaWMPY=;
	b=OYenDbHLjUY3HUdApht4e6kPGX57HhmESm27AwSl06BTKVHZ/D+9yaOYxsAZP+Hv
	i4qUzvBQRxD7PJVzv0MWhCr1oRjqmU/eI97yL8xOeyXTkb6tez6X7Acu0JVcDeMAP7U
	kTx52hYqfUc+rtBzefGENIB9C6RvaMGsRemI6YfA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819263a2f3-be5e29ae-72a9-41ec-ab47-dc7a02dee7c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc142198eb532031993ffdf2e495450de29355b7be8cf82896fd22fc231151d4
Date: Thu, 23 Jun 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656018412
