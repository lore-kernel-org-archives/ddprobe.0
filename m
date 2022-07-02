Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B0511363
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 03:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656732413;
	h=To:Subject:From:Message-Id:Date;
	bh=9ViN8puOC9+mezarEzT5HxxKpKp2yVJJHFenH9VT+iw=;
	b=AzBXecuwxqVoy4ZVomF5qLigCXud9NtRb5+3hPBnZ4eqyFr2wIcZzB/szgaL4LIF
	8FSZNMQWOKziLmqaqG3HjDZ7Pt/jGXBuAQWqigeUa+FVl6xBe076CrSbbGXZkXPrP5o
	eFUP+0oFUIMaDEmJR6S/kqTkuqKByeI4pAGcKtCI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656732413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9ViN8puOC9+mezarEzT5HxxKpKp2yVJJHFenH9VT+iw=;
	b=jNpjrScTPI1aXuRCBI4ae2acuuUTAJlyDc1OD5fFFAKBABOSRiUtodu0XAxsyH59
	iqLzte/oFgp+BAwfPS4uaf+lVeKjJi6iq20xLXBziSU/EGGIOdCmukXH8ShkUhHYIBF
	tLaKaga9cMQuyYd4emc/t7fV8MsmitX6OA8/vDws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bcf2697d-f48745cf-a6b3-4b2d-bbd6-1eede59c0bf6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abd6c0cf35ac24d28a130a4e1cc95e2bfe4b00768c13f949a56d54607de1c599
Date: Sat, 2 Jul 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656732412
