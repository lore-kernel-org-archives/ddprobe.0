Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E562C7C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 08:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654588919;
	h=To:Subject:From:Message-Id:Date;
	bh=Ci5RA/kLfqG+tlQbmzD6f7+XTWrrTT/8bZ3qtUZiB/s=;
	b=Mqy5FwOZgOSECIUN69cK9KxHhHNwJxCF1gzw4lmg3UzxJsqQhMOSpeHMIMsnVFzc
	sFHc9kZbxPdl2FjIGHNBxbxcsyD55vTSQT3V7TgeQalezl85Ss8kKp1ux8ZoQDIW0M+
	Lf+51RlNj2DyIn7ky8JfnnFvmRDWRYsRcmqZ11PM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654588919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ci5RA/kLfqG+tlQbmzD6f7+XTWrrTT/8bZ3qtUZiB/s=;
	b=VYchTQyGJ1ueJQoba3Zb0GD8JCD6J5k17kI6QgtdXlYrt3t8+VhtLdoTHZvn5AUW
	Sbs8VEZPH5DqJcZaPYc3GN0CfT+EV/wH+vN7iE2w4eaLZaJcUQLoMcRhvxsRYyDiOjy
	aBh5p9RoL16QVcUXlpx0Uodw3OpKlHuIOR54MmjY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813d2f4dfe-559b2f23-a067-434d-9ae3-fa64baf3293a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3efa181a800f93571c9f693253881d778dd127be789fc6eed1fa427d53388175
Date: Tue, 7 Jun 2022 08:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654588919
