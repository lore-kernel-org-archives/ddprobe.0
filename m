Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA9B07B
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 17:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653757319;
	h=To:Subject:From:Message-Id:Date;
	bh=wjcTsuGUfC/UDZOLYUigE51MJ96pwc0xGlK7rdNAX+c=;
	b=am45GLCffWIDPm8Vpk8EeW60Xaz7PJn+yoBlNWU017qNU/bAuNPdHcguhB8tALUL
	NQ99Y7bxV42y+rys2iuvefXZ0HdoGBZ8+OEGCXF9usqcLdv1Hjwn8IECYqn3gELY6oS
	kc7mYhD9DxU3WO76xbTTR3XaoWt2iNNQoA8Zgq+c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653757319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wjcTsuGUfC/UDZOLYUigE51MJ96pwc0xGlK7rdNAX+c=;
	b=PCieyVtILEBma23UX9wozsDsy8F4mLRK9ejFdCLdn8LJDRb6xRyYZh3Y6H1Mfcij
	RUunu0ctWspJzy7okvbw7aUQ1zXyTYox8OIyWfltBNSqEnSNzXlS4AGHI/WGCtjgp3w
	NaZWu0hZ3u97TkxaY6Ewvs20jVRYKJafyXvhq7H8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810b9e1849-b7816161-43f5-4a53-ba98-d74625d4ad8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5d28367412172122b7d5cdc4edca941436d7522cc4734491baf73fdcce4817a
Date: Sat, 28 May 2022 17:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653757319
