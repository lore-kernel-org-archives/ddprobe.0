Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7D27E0
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 05:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656481612;
	h=To:Subject:From:Message-Id:Date;
	bh=S/lx26JGrC5KkUqucrtDWgj5/EjjUsKxEa8m5Pzj8IA=;
	b=lKZNcw/8WEJGuQjt+lBq1JDvhKqsEIz57VoUuBDY+XR5HcR5WX4hV/I0gL2mkBQQ
	q1KBSHrIDux6K2l9/6cbdGJXfHvo0XBzk9Qh5d76nuY5dR2TaFVKf0zCMkEtFLvunSx
	5cdfzn9qxKx33oYFihZWEmCovANyYRlXE28Qqk6M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656481612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S/lx26JGrC5KkUqucrtDWgj5/EjjUsKxEa8m5Pzj8IA=;
	b=bGJcdjg7SnsxxR/9XKOGz65RP4A6Lx+cOiwnAgCeqPP/uAblNHw7enuRsrjeNkqD
	bIaqzXSWuvG4xbtLKWoUN45iEycSRtFdCeBWr3vsKVK8RbbV10HKxv3Sz0kSXG+KJVq
	99nS7lRTzO7QYaANlEuN2C/HvFlafSdRBXVa/prI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181adff81ea-26b73d81-0991-493b-825d-3ac76a6cbf54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: caf18599733b8d12469183c490d337e453dbc45b6e6227c0960acf00a7713bb3
Date: Wed, 29 Jun 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656481612
