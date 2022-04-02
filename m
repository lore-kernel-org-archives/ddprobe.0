Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017D11856
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 14:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648908358;
	h=To:Subject:From:Message-Id:Date;
	bh=Ph2DilvvShoSsc5Mg8NdgpsBiZMBY0vr9sLNTu4MK04=;
	b=KVthJU0szfbQOjHTrfmB4RtEL3y+0h4bVdXMXqHxt1JUJucJmXsH5EB8z5VJphY/
	42HU4TAYv59v54xmwPTNshw3huyrQF7HaVXEjICGEBADWw0Ml5iCGG5p+nN+Td70iQD
	NkO4W1jzihId8x5EflKkyKp2XQpF/ZJfqMNHsYbA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648908358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ph2DilvvShoSsc5Mg8NdgpsBiZMBY0vr9sLNTu4MK04=;
	b=GsiDkfdvSFtVzVuf30kwQ1JjCTYQf9xOHFhXjoOTlAZGVtzHnk4b8/0NFsRJ053N
	M3jttE8/0xhAaL84P/ez+qe8+ir26noqI6UprlCyCjtAdiLvln05hyOuXSrbt0TeEfb
	dzae3tFXatt8VDlWbfymATnvDR3jze+3lK4jnJYA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fea98d281-81468a31-a7db-4c37-84ea-090c8a4be16d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46739854c65019b4481fea3d48566c444e0f95b96902f8d544fc90ba99328309
Date: Sat, 2 Apr 2022 14:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648908358
