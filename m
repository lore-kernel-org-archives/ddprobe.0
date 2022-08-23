Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555367F
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661221252;
	h=To:Subject:From:Message-Id:Date;
	bh=9jdoDxcYQVagLY1E5HvwP1DjXHw6ZvRxRW8GNi0MqZ4=;
	b=j30iYkoPO9lL/j8OtwC5vSfKzHOqlG99YBsDBQJv1tE/0bmaYC6473kDjutR0Fba
	CTIWYMyy37GGm00tAC2Lr0X2tGiYmqU2U63ycCFt0r0GP+ugoHnFR5o5VyaOWakgEQ1
	tWk0AZNzfJfKKQL/yCnaAftZqN3nRnMEDH35uzWw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661221252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9jdoDxcYQVagLY1E5HvwP1DjXHw6ZvRxRW8GNi0MqZ4=;
	b=fwmqSo1uasXcdCKpcV59kWb/0EEXep6ck8mkKMd7s2CRfor7UOj5eul96WyBsPIh
	v05sKWBOh+TfyCYi2BuAreMTULrqR8cJzULyWM/+xXxXjWkc235fT58f3aJwldqr179
	MwXgZUgKis8CJ0IgEjAtH6//JloZdKk4I758K1Pk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c880adb7-c1d0458c-26d5-4725-a8f3-c36b18f74e26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3dbc3e1013b609d9ccb3d3473823381f57a4d9369a9f4cb049a340af685e8db
Date: Tue, 23 Aug 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661221252
