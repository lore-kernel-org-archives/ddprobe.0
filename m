Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF7C7C
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 12:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653567779;
	h=To:Subject:From:Message-Id:Date;
	bh=fBseleaJ8jLlaT///3k+p9GOVrvB0hLXken3vdx9YBs=;
	b=dZWQ2+WTwiRdKEPtKFUhuyz4XBB73ooC4dTemD2s/HDHK//pqqmOO69UgE2C6Cnp
	h0nwtdy+f/eWaH/Av37X5K1V69qQAcp+cEw5qm4/De2uFg8R3BjYNqnNGa5L60y060d
	xZJopS/o5rUPWT+XXa6BiR0i+V0w04q/iktVsykY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653567779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fBseleaJ8jLlaT///3k+p9GOVrvB0hLXken3vdx9YBs=;
	b=dsSGC8KO+ofr1U6vjNetobH7ZAClcJIrKi1GlYzXbJ+k6fAoWqD3yrgraaVMAHhb
	GcvCp6Ha1YwrJX29C9pwFFMYuwjUEFIRmUf/tjyJ775odu4b9iK6K5IWH9Q9lHpkUPC
	5V1VMS45E4U8U5ruwD9Miy9ZGO8AvAviyh7sb1jM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810051f203-65682d06-4023-4ba9-abd6-03e8df4e7a95-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 419196ab7a735db3066f16879aafef51878e60df0d52d34a87bd53e83601f7d0
Date: Thu, 26 May 2022 12:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653567779
