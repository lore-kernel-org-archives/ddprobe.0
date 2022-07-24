Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8910C33C3
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 15:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658678212;
	h=To:Subject:From:Message-Id:Date;
	bh=n1lAqWBmY5WUU3yN/lGdJ5/7ZMEe39tzzugafbKckDM=;
	b=kMPIQNJ/W4HrTspdKR4br+zyhJYRQrLI7PZ2s3YnNRTPX2NE6FQ1CoIhXUba1YiR
	8GnMEXp09D6iKMRaEBak6VI22fhdfU1+Or8om6N6TioTi4qFWU1W36/UKMNZf1/k4V6
	lckAe6Qx3HkBBH9vArdi12KYai/HxiT4c8Ku5QMA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658678212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n1lAqWBmY5WUU3yN/lGdJ5/7ZMEe39tzzugafbKckDM=;
	b=FwhtEd4CGH3gq5fA096U8sdGLlwqgaqOmDHDoLorc4484/BeqaNKOj78qrbKADrK
	MsPWWn/BBQrHL9hMEx0VcYqW+hXPa3bLfliWnYDt020+6jgdRwF8NdDvFiY2NhJsH+9
	eHhZrS4hWpTfoi+paYFGEEI+bsQ+TSUPJVUb5Rc0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018230ecf6be-e3c1bc07-a947-4156-9da9-82943d7b629e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 282a7f1f6f2e017ae96471fca672800c693eeb297071a5e264337f280a20e1f9
Date: Sun, 24 Jul 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658678212
