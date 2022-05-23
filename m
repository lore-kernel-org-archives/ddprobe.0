Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166F42F27
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 18:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653329579;
	h=To:Subject:From:Message-Id:Date;
	bh=9TZW1VqMX9811UKClQ7SRLf4/zSwXVhOw/t+VKeiNjU=;
	b=CpjdGvyAhyaXImJzRScmS9YB47bHboaD8FUc1deyYcM1c6hSx/ayUS32eodWzsKZ
	DfYHhzT612I2Kn8yiPu3FnlvQ7rBBB6D92dRgckD7TMfr/cGExLbcI27lt6NT2a0G8t
	gSt0NPTJIguWhbmAOgxtqbTOGms1jTDnoAIBA1Yg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653329579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9TZW1VqMX9811UKClQ7SRLf4/zSwXVhOw/t+VKeiNjU=;
	b=dI20iDK5A3Q1rx2IOWW/XetJSHOCMIjplYoHTi0dK0P53qqDK223EVjuGaRMOqMe
	7InJtMKJANdiA2ctdjBBh6H9AFfWBOOCzbrO+E1UgW/Fmnw8uYwFQ5XkK102eJMv4hV
	VuLTWjesYt66zi0qJ4/eF5mLESUiq/qdbIjS1oos=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f21f4d0b-a0e35ca0-49cb-4760-ae71-26b71a39ab38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e79bcd8b4a5dab6041679adf54dc411a1d312a858bb98bcce0688e35d60bb94b
Date: Mon, 23 May 2022 18:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653329579
