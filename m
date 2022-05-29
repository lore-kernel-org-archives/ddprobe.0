Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D480517D4
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 11:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653824279;
	h=To:Subject:From:Message-Id:Date;
	bh=hxnz7qhM54yKOZzH8tI/CLzKuWqw+62tohOXbnx818Y=;
	b=NcQrP4COtXs97lWjs8XzVhN/+Mhz8kPGrhP1cGiTu+BZxrMaYYyjS0fzQKbhGEp1
	vJGHEXoAB9fImnAlPTj76s5hTPFhZdmvYIsOLK26DB1DyvBFqS0KdFPIqX3ImGkcuwj
	QrzQx8bpB4R52b2dQSA+NJTDEvs+S39auh/bIIJA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653824279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hxnz7qhM54yKOZzH8tI/CLzKuWqw+62tohOXbnx818Y=;
	b=USpz+YUkSwcmRBgOavZeL9OgWkryTeQa9d+xHgQ/EuzWqAl/YxvOrLWXPzXXRuBx
	en6r3IuLEesdUaS+u7LyN0dfXxz2kFY9JB3ZKbwoBTiLsfNxNMGMiofU1oy/Nj9V8eZ
	MUKi/CmczUmKyopIfkIWwFdbnmwQtf4je5EWTkUU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810f9bd29e-5dc2c1dc-53ac-44c2-bea4-18d6a758f0a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 130ab06ace097c765707040cc5b3edecb29b367d4b8fddde34455855f36301ff
Date: Sun, 29 May 2022 11:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653824278
