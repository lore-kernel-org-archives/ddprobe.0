Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0845E17D0
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 13:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650805978;
	h=To:Subject:From:Message-Id:Date;
	bh=ZPeDUsW86gvPig3s8g3yHQSsldaRZcdq0b7P1014WMc=;
	b=CINEPIY7W/BCDT5llK3yt/b8q2UDiyS55U0z74DK3zXDkKxSBB4Fh53yI9wp5dbl
	GQQOh9lHOqIXAbiEdqpDY6OwsmF9KVWK34BB2yjSO/Q9ZkEK/PSO04lFzAFhcf5upUz
	yD49m1ZjHWOECVmZI72XxbwK8BSzyZdbBm3uo1JE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650805978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZPeDUsW86gvPig3s8g3yHQSsldaRZcdq0b7P1014WMc=;
	b=RC7sj9gjw21BNnyxUjy7qYAIMOezSLN2iRjljvyqjyNlU4FPUCz33ONh5WLLNk1v
	/VWSGABcAPGpbvQ53lt5W0AjG+poNh4tWC0gKCYaK8CSatCkhTC0kaBxa8SPzSkLk0B
	75gwJtMxguidImQM91q3Z7QI6+kuz6A2zWThI4/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805bb434bd-998af5e0-60dd-4d9a-8749-6674613c5af4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd2905ab4aceead4cb71070028d8c1e39c5b7b554e769d137b2b5657fdd38c67
Date: Sun, 24 Apr 2022 13:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650805978
