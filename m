Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2A94A2C
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 17:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658512612;
	h=To:Subject:From:Message-Id:Date;
	bh=BQJpoRXlzy5LTuozbjwUvsFm+hPuuvKAQRjf0OVaeBQ=;
	b=jQH89aWKcMqknpUiDaunWQ7Xeb/83Zg3Ka6vD4d0mybmCZh1Fi27TFqvJHnoy9MH
	awlHKnrM4lHNw8JtTlQfNfpBNNsBVBnxuEZPZmUSfIof9Lutd5B5LXIKvx2AYFIdzBx
	5rs99cIC9AVeps3S4X8buB/cxOPak/BcuTQHgC7Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658512612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BQJpoRXlzy5LTuozbjwUvsFm+hPuuvKAQRjf0OVaeBQ=;
	b=ZdTn1MBPqXbHPiMkmgT+mIEaw/r/X1i+6Kfje/2gcovOZNEdmLJIZeBxg3ksEyx7
	k8rkiv4bbMlI7/vWa/URZ7sYGHBddUeSospLx/wVPNhc0fQO8LXugoGqyyVdsueISuv
	4tpCa0PZA65B7nyT9tsD/s2mp/J9OSSOdf8Cf/xs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182270e1bc1-c707f8dc-52d4-42c7-a433-d75ca98d1e11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e909c366871e1c74d121e3c862e040500ee556ee1d44ebf6d000e380d0b4d4c8
Date: Fri, 22 Jul 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658512612
