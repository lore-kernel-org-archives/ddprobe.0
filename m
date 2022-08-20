Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D387B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660966853;
	h=To:Subject:From:Message-Id:Date;
	bh=VkbH+kcmGpO+MNT4bs5thJ3JvaY8nBY6GQ0ZCbEpJXE=;
	b=jGE/+tKPelzwhnt+DgesZTpVgvnoV9wAqnQXGfQKQvBBqW8LX1IIMK9yN25OjStT
	F272Zz6FMGLu4MdDDpuSr4pa5edgs46W6cKdEYJelG/5cp7NjTbKI2tqUF8++KQznoY
	YuM3eRk/miLBM3Z0XudYvX//WOIyjMGY+WWdYHnY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660966853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VkbH+kcmGpO+MNT4bs5thJ3JvaY8nBY6GQ0ZCbEpJXE=;
	b=KaMsXGNRegHLAs5cLT1ZXJ/mhaNh+gaEYa5FmQKuWw1iNqCFEqCaVB620WadJi0P
	BhPXr7fNVjpUQfbNAq33yvzR5VlaS3BYN/YFzwETPZ5R3l/RYp8yYwQ9OAw4X48Ow6H
	N9v6JI7jAl6bRqjOT0AtrNuOwdGOyA49nq2WBJ5c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b956d81d-6c1f973c-edab-4027-88df-ec2b7bd1522f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37707af0ec525578b3c4fd7845c2150b28bf9c938890ec276714785e8a94a4e4
Date: Sat, 20 Aug 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660966852
