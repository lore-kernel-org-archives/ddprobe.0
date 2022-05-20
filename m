Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CC915AA
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 02:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653015419;
	h=To:Subject:From:Message-Id:Date;
	bh=axoHU6m//wg8jj5uO9qn++H0M8DMk2dpsLzAg9sjKKY=;
	b=REqcHGl4hr3GUImCTfTZyIWMCm5W2kgpU3D4X8IzLREgvjhdDUcSbKGh3NXUpRBb
	7fIr5zc+OXEC+IbORE7/YWCJH8zs+krlOmakBN+2opUpdXa0D0yK1oyBpOjopYWFV+8
	IcAZ4xriC57hIa9YV2egFOrzyBubjRSCYn5O5cvs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653015419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=axoHU6m//wg8jj5uO9qn++H0M8DMk2dpsLzAg9sjKKY=;
	b=X3szXlhOK0F2ltTyGSXE8PsTzrQ/2aPd2KpAte3EIV/eLAfMqW7IKXr7MyoCElqQ
	3pA3F3WVoG4O5HvSspwQ7z+1P+bAH1hxUNUBImvU6tmKDjNiwWl7Muzu5AlVOLAtubx
	ZnU2DfoodQIopRTtQbbtdo4vebhrwloREl4hPBI0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180df65999a-bb6d68f0-a64d-44be-bbae-a619b2a35f83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68f17f7667bc9e98bab0c6cc1c764e5e1ea7a783cbe39bcfe94a62a95c904e92
Date: Fri, 20 May 2022 02:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653015419
