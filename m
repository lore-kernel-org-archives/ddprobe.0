Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F015D7E5
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 16:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658077012;
	h=To:Subject:From:Message-Id:Date;
	bh=zZ0jpGjVFZO/ornsx0VFWTtR9Svz8oFX6KOMr3sPTRQ=;
	b=S5ylvoLPy0nDBnz5t/idNsKE++h7rJJgYgUqnP074n7oY6Sbtff3ZvxmrUGtZT1j
	D8HXiJmcW3nvE34wYfse+hx/FQbHkcP1+nNUrR7NcLN30a63elPJObjcsfiLmdqQ5Ov
	TKY/3M0lclMgv3yT9up8UPFE6Ci3JkaqpQ3c3M8k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658077012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zZ0jpGjVFZO/ornsx0VFWTtR9Svz8oFX6KOMr3sPTRQ=;
	b=WLYBpOZ0q/in488ZgU7q1tIhrB+0q6eqKYUMq27uWe4SYef2cu3++wIynKMyXeFD
	n61lzV7SM0kbt0m1pdTklOKZF8S6kZjGDr0wc9r6hmLz/Ino1Eh2TFUXFl7FmAAKF6J
	cD4dgiYMAVI52BBttXYXfNCXTdaYJ9c0wqfkQo3o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820d17611c-0a971e41-ec44-430b-9328-8e1192537d9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab6545913275586ab34772dd8d51ac011dba255f55cece40dd03f856884ae627
Date: Sun, 17 Jul 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658077012
