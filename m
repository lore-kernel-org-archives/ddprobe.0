Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A92B7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 08:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655628119;
	h=To:Subject:From:Message-Id:Date;
	bh=2V7wwwUHytMy2kJGWBkvUoJKRcPBCx/ITGYJDAQrqh8=;
	b=JVOGO5neJrchWWkN50aM++TnLniYKO5Tr7p+4sZ8Mculpgz9bgZG54M5VMgVHXCw
	+r5I3vQRpV81u62yR1QoYvUb8Gi4YxUULHCvvupWZkS0plUUEykpwK/IYFo0E4y2vht
	515zEN/3U7Zvmjdx8BbMk/Sb1gSVkIW+ia5ok7q4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655628119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2V7wwwUHytMy2kJGWBkvUoJKRcPBCx/ITGYJDAQrqh8=;
	b=gaQGor+qfO65v2Z7Bcx/P1m+H21CetU58V63E3+13QVb0qV06uNcIwjV2UdLI+EM
	sazMuptImfwzzkmd4ct8G52Pn/ECc69NQ+E+XXJxjTNAuHTXaXsyWmqcsF0woi/wf4U
	IELm1r8r0mo5TNXOEETSc+y8s90S21TcXYuOLg4I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817b203cea-c03a32bc-f25a-4686-81eb-0b814bb17780-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fae2232b2581c33963241afc4b64423e597c4c555c5eaf30ff66e436d97db99f
Date: Sun, 19 Jun 2022 08:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655628119
