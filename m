Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0197B
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 23:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650150478;
	h=To:Subject:From:Message-Id:Date;
	bh=4uY+ArQrBnN/mfnJb38AfJ8oBhZcULfb+zgdSaaQWy8=;
	b=OZyGR6SjTn5JfDroNrQo/mdE5B3Sshv066irtjA1kdbqCBp5Exkvpf+HFcEte7Sg
	mVPqIow4eaDg9WgyWeWR8dukfYT2zT3GvUCx6e7n+6ECwb32fnixVCwF2FaKi1WPAVs
	Ob7Y+73yAcJsPrVxuIm24odxedejo7z2qhUtyzLI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650150478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4uY+ArQrBnN/mfnJb38AfJ8oBhZcULfb+zgdSaaQWy8=;
	b=Ez7ww6993WE/3W+va7Uikam9GUfYRHF2rHmQ2rlgQHGfvUmrZQJrZ869wH9tmTd0
	+rfUARoLTXVOO+O6wR+aAXBO2j+Q9rkHCe1bl0u2ioV4L99RNM4lTSKn7khSr4y8iVo
	kvT1x1xZISROqQS0Wv+V76btA5YOZviRLA7AluAI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018034a211b9-b058cbd4-6b01-4d9f-b93d-f322e612496c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a2e12a9226f8701ca9874365fb60918dae7964d20c4cc37d94f12f5019894b0
Date: Sat, 16 Apr 2022 23:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650150478
