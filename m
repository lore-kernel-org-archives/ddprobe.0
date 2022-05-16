Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FE8ED1
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 14:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652710739;
	h=To:Subject:From:Message-Id:Date;
	bh=WOvNvuiPxcrHltHbb1jIMk0MFHXwn2jMxHx81HalZJA=;
	b=DJTfx8NB7bcmV2i+BwH/2rspIpW5eVolsawu/3IxHWtWBrCLRHEeI5jJdYXIoLs2
	1piyJlbN/ybTttC1FtYh1KpXWLF6Kjq/i0XSmCDe4cP9mSRllH5buJr94wuYwj424Qj
	Kp8QqG3U1QnWF7kJfM7gZonuGzMLs0bAXWDUMZhs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652710739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WOvNvuiPxcrHltHbb1jIMk0MFHXwn2jMxHx81HalZJA=;
	b=YDBLn8Q2ajyqwezBThBmWgvYBzj+fdIjTiXnvXYSennKMd+SzeSYROG13Q4AlRFy
	HuZjr+5mPy1afVaGwGHHXrQQlyPx135egM7H3vsRs3aKH4IwAYaC4DllFAOXmFeGlGC
	s4ab/3dSeTtGXZdJKBg+h/wdrVEB4eEq9FtUHzIY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cd3c8d86-f1c0afaf-b8b2-4b15-b305-8521edc3e517-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55b3a4a5f7d5c8f6f75a6627e33c45c5b152de4c18b554e4d0f9d33440b86f41
Date: Mon, 16 May 2022 14:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652710739
