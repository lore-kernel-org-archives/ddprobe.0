Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66C07E0
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 06:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657261612;
	h=To:Subject:From:Message-Id:Date;
	bh=WZoch+nbcDkTc765jh2rOs89kEf3zHn1AbYPz6ddun8=;
	b=h3OG1p+xQ41cngOyA9omF7HbtLSximzn/aZIgK6CNT+WwjbHEdXzGKb8Ve99MMg7
	tzT1zw3qKzy3qj7dKyFeFaIDw+P1hrfuUMDsIVDb8PHteJ9+YRCnKuF1NQddTCYVwZ/
	Z2JrPUXgzTixVxW5CQFWXyhhEAMgMfkeoVpRYVRw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657261612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WZoch+nbcDkTc765jh2rOs89kEf3zHn1AbYPz6ddun8=;
	b=boCA0+tx4YWwqhf2kmwEdF+nUn8invi6syuL1zU6p4TA14fR2Fchcu59yHq7xdZQ
	IC47l09e7wcp6HDlhc4LNPq8jqISFibJQttce54zvTWw74+VJrokJtnWiDrtUPWd5FR
	+25nXU58+qLeBqv1BOyXkIZZHCuMygh+GWLjXY4Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dc7d5d7f-e92f7f9f-9e85-450c-8b09-6e1b4be04827-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8706c1f328bd7c86fca55b635aa8d97a5d711db0e69f37d2dfa40554f7d4a494
Date: Fri, 8 Jul 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657261612
